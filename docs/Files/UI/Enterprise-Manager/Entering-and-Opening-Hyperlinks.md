---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Entering and Opening Hyperlinks in the Documentation Frame
description: "The Documentation frame in Job Master supports hyperlinks that open file paths or URLs directly from Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Entering and Opening Hyperlinks in the Documentation Frame

The **Documentation** frame in Job Master supports hyperlinks — file paths or URLs — that open directly from Enterprise Manager. You can attach reference documents or web resources to a job definition so that operators and engineers can open them without leaving the application.

## Enter and Open a Hyperlink

To enter and open a hyperlink in the Documentation frame, complete the following steps:

1. Go to **Administration** and select **Job Master**. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Documentation** tab in the **Job Properties** frame.
5. Type the file path or URL (for example, `www.smatechnologies.com`) in the **Documentation** text area.
6. Double-click the file path or URL text you entered. The **Open** dialog displays with the prompt "Do you want to open [path]?"
7. Select **Yes** to open the file or URL.

**Result:** The operating system opens the file or URL using the default associated application.

:::note
To open a specific path when the Documentation field contains multiple entries, position your cursor on the target path before double-clicking. Enterprise Manager uses the word under the cursor position to determine which path to open. You can also select the path text before double-clicking to open that specific value.
:::
