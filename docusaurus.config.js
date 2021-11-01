/** @type {import('@docusaurus/types').DocusaurusConfig} */
const VersionsArchived = require('./versionsArchived.json');
module.exports = {
  title: 'SMA Technologies Help',
  tagline: 'OpCon',
  url: 'https://help.smatechnologies.com',
  baseUrl: '/opcon/core/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'smatechnologies',
  projectName: 'opcon-docs',
  themeConfig: {
    navbar: {
      title: 'Help',
      logo: {
        alt: 'SMA Technologies Help Logo',
        src: 'img/logo.svg',
        href: 'https://help.smatechnologies.com',
      },
      items: [
        {
          type: 'docsVersionDropdown',
          position: 'right',
          dropdownItemsAfter: [
            ...Object.entries(VersionsArchived).map(
              ([versionName, versionUrl]) => ({
                label: versionName,
                href: versionUrl,
              }),
            ),
          ],
        },
      ],
    },
    footer: {
      style: 'dark',
      copyright: `Copyright © ${new Date().getFullYear()} SMA Technologies.`,
    },
  },
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          routeBasePath: '/',
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl:
            'https://github.com/smatechnologies/opcon-docs/blob/develop',
          lastVersion: 'current',
          versions: {
            'current': {
              label: 'current',
            },
            '21.0.0': {
              label: '21.0.0',
              path: 'v21.0',
              banner: 'none'

            }
          }
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
  plugins: [
    [
      require.resolve('@cmfcmf/docusaurus-search-local'), 
      {
        docsRouteBasePath: '/', 
      }
    ],
  ],
};
