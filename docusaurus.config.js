/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: "SMA Technologies Help",
  tagline: "OpCon",
  url: "https://help.smatechnologies.com",
  baseUrl: "/opcon/core/",
  onBrokenLinks: "throw",
  onBrokenMarkdownLinks: "warn",
  favicon: "img/favicon.ico",
  organizationName: "smatechnologies",
  projectName: "opcon-docs",
  themeConfig: {
    navbar: {
      title: "Help",
      logo: {
        alt: "SMA Technologies Help Logo",
        src: "img/logo.svg",
        href: "https://help.smatechnologies.com",
      },
      items: [
        {
          type: "docsVersionDropdown",
          position: "right",
        },
      ],
    },
    footer: {
      style: "dark",
      copyright: `Copyright © ${new Date().getFullYear()} SMA Technologies.`,
    },
  },
  presets: [
    [
      "@docusaurus/preset-classic",
      {
        docs: {
          breadcrumbs: false,
          routeBasePath: "/",
          sidebarPath: require.resolve("./sidebars.js"),
          editUrl: "https://github.com/smatechnologies/opcon-docs/blob/main",
          lastVersion: "cloud",
          includeCurrentVersion: false,
          versions: {
            "cloud": {
              label: "OpCon Cloud",
              banner: "none",
            },
            "23.0": {
              label: "23.0",
              path: "v23.0",
              banner: "none",
            },
            "22.0": {
              label: "22.0",
              path: "v22.0",
              banner: "none",
            },
            "21.0": {
              label: "21.0",
              path: "v21.0",
              banner: "none",
            },
          },
        },
        theme: {
          customCss: require.resolve("./src/css/custom.css"),
        },
        gtag: {
          trackingID: "G-7XYMFXX81Y",
        },
      },
    ],
  ],
  plugins: [[require.resolve("@cmfcmf/docusaurus-search-local"), {}]],
};
