---
title: EM Layout Overview
description: "Overview of the Enterprise Manager interface layout, including the menu bar, toolbar, Navigation panel, editor area, and status bar."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: conceptual
---

Enterprise Manager is an Eclipse-based desktop application that provides a multi-panel interface for configuring and managing OpCon automation objects. The interface consists of five regions: the menu bar, the toolbar, the Navigation panel, the editor area, and the status bar.

## Interface regions

### Menu bar

The menu bar contains two top-level menus.

| Menu | Description |
|------|-------------|
| **Enterprise Manager** | Contains actions for Refresh, Pause Refresh, Logout, password management (Change User Password, Change Event Password, Password Encryption Tool), Preferences, and Exit. |
| **Help** | Contains Enterprise Manager Help, a Documentation submenu with links to OpCon and agent documentation, Legend, and About. |

### Toolbar

The toolbar, located below the menu bar, provides one-select access to frequently used actions.

| Button | Description |
|--------|-------------|
| **Logout** | Ends the current session and returns to the login screen. |
| **Refresh** | Manually refreshes data displayed in the active editor or view. |
| **Pause Refresh** | Pauses the automatic background data refresh. |

### Navigation panel

The **Navigation** panel is on the left side of the window. It displays automation objects grouped into categories. You can open any editor by double-selecting an item in the panel.

The panel supports two presentation modes:

- **Tree view** — a single hierarchical tree with a filter field for quick search.
- **Shelf view** — collapsible category sections (PShelf), each containing a tree of items.

The presentation mode is set in **Enterprise Manager > Preferences**.

### Editor area

The editor area occupies the center and right portion of the window. When you open an object from the Navigation panel, a corresponding editor tab opens in this area. Multiple editors can be open simultaneously; select a tab to bring that editor into focus.

### Status bar

The status bar runs across the bottom of the window and displays real-time system information.

| Indicator | Description |
|-----------|-------------|
| Escalation acknowledgment | Shows pending escalation notifications that require acknowledgment. |
| Notifications | Displays system and license notification messages. |
| SAM Pulse | Shows the timestamp of the last heartbeat received from the Schedule Activity Monitor (SAM). |
| Connection status | Displays the current logged-in user and database connection information. |

A progress indicator in the status bar shows when a background operation is running.

## Window title

The title bar displays **OpCon Enterprise Manager**. After you log in, the active connection profile name is appended — for example, **OpCon Enterprise Manager - Production**.

## Related pages

| Page | Description |
|------|-------------|
| Menus | Menu bar items and the actions each menu contains. |
| Navigation Panel | How to use the Navigation panel to open editors. |
| Information Bar | Details on each status bar indicator. |
| Keyboard Shortcuts | Available keyboard shortcuts for common Enterprise Manager actions. |

## Glossary

| Term | Definition |
|------|------------|
| Enterprise Manager | An Eclipse-based desktop interface for OpCon, installable on Windows. Used to configure and manage automation objects such as schedules, jobs, and agents. |
| Role | A named collection of privileges assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
