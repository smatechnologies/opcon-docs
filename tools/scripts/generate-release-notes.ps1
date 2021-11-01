param(
        [ValidateNotNullorEmpty()]
        [String]$JiraApiUrl,
        [ValidateNotNullorEmpty()]
        [String]$JiraApiUser,
        [ValidateNotNullorEmpty()]
        [String]$JiraApiPassword,
        [ValidateNotNullorEmpty()]
        [String]$Version,
        [String[]]$AdditionalVersions = $null
    )

Set-Location '..\..'

$fixVersionParts = $Version.Split(' ')
$releaseNumber = $fixVersionParts[$fixVersionParts.Count-1]

[string[]] $content = @()
$content += '## OpCon ' + $releaseNumber
$content += ''
$content += (Get-Date -Format "yyyy MMMM")
$content += '' 

$pair = "$($JiraApiUser):$($JiraApiPassword)"
$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($pair))
$basicAuthValue = "Basic $encodedCreds"
$Headers = @{
 Authorization = $basicAuthValue
}

$versionQuery = ""
if ($null -eq $AdditionalVersions -and $AdditionalVersions.Count -eq 0)
{
  $versionQuery = 'fixVersion="' + $Version + '"'
}
else
{
  $versionQuery = 'fixVersion in ("' + $Version + '","'
  $versionQuery += ($AdditionalVersions -join '","') 
  $versionQuery += '")'
}

$maxResults = 100
$counter = 0
$issueCount = $maxResults
$currentSection = $null

do
{
    try
    {
        $url = $JiraApiUrl + '/search?jql=' + $versionQuery + ' AND "Release Note" is not empty and "Release Note Section" is not empty and status != Cancelled order by "Release Note Section" asc, type desc, key desc&startAt=' + $counter + '&maxResults=' + $maxResults + '&fields=customfield_11719,customfield_11723,issuetype'
        $url
        $results = Invoke-WebRequest -Uri ($url) -Headers $Headers
        $resultsContent = ConvertFrom-Json -Depth 99 $results.Content
        if ($resultsContent.issues.Count -le 0 -and $counter -eq 0)
        {
            Write-Output ("No issues found for fix version " + $Version + "!")
            ##[Environment]::Exit(-14)
        }
    }
    catch 
    {
        Write-Output "Unhandled error when querying Jira!"
	Write-Output $_
        ##[Environment]::Exit(-13)
    }

    foreach ($issue in $resultsContent.issues)
    {
        $section = $issue.fields.customfield_11723.value
        $note = $issue.fields.customfield_11719
        $issuetype = $issue.fields.issuetype.name

        if ($null -eq $currentSection -or $currentSection -ne $section)
        {
	    $content += '#### ' + $section
	    $content += ''
            $currentSection = $section
        }

        if ($issuetype -eq "Bug" -or $issuetype -eq "Task")
        {
	    $content += ':white_check_mark: **' + $issue.key + '**: ' + $note
        }
        else
        {
	    $content += ':eight_spoked_asterisk: **' + $issue.key + '**: ' + $note
        }
	$content += ''
    }

    $issueCount = $resultsContent.issues.Count
    $counter = $counter + $issueCount
    Write-Host ('Processed ' + $counter + ' issues.')
} while ($issueCount -eq $maxResults)

$output = $content -join [Environment]::NewLine | Out-String 

$releaseNotesFile = 'docs/release-notes.md'
$releaseNotesContent = Get-Content $releaseNotesFile
$releaseNotesContent[5] += [Environment]::NewLine
$releaseNotesContent[5] += $output
$releaseNotesContent | Set-Content $releaseNotesFile
