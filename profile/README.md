# JCaldwell Labs

> Experimental developer tools, terminal applications, and context-aware development utilities

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

## Mission

Building practical tools that enhance developer productivity and explore the intersection of terminal UIs, context-aware development, and AI-assisted workflows. We focus on:

- **Terminal-first experiences** - Rich, interactive applications that leverage modern terminal capabilities
- **Context awareness** - Tools that understand and adapt to development workflows
- **Developer productivity** - Utilities that streamline common tasks and reduce friction
- **Experimental prototypes** - Exploring new ideas at the intersection of classic computing and modern AI

---

## Release Train

All projects follow a unified release process with automated GitHub releases triggered by version tags.

### Current Releases

| Project | Version | Released | Highlights |
|---------|---------|----------|------------|
| [my-context](https://github.com/jcaldwell-labs/my-context) | ![v3.1.0](https://img.shields.io/badge/v3.1.0-blue) | Jan 2026 | Context tags, hierarchy & cross-platform sync |
| [smartterm-prototype](https://github.com/jcaldwell-labs/smartterm-prototype) | ![v1.2.0](https://img.shields.io/badge/v1.2.0-blue) | Jan 2026 | Production-ready terminal library |
| [boxes-live](https://github.com/jcaldwell-labs/boxes-live) | ![v1.0.0](https://img.shields.io/badge/v1.0.0-blue) | Nov 2025 | First stable release |

### Release Process

```
+-------------+     +-------------+     +-------------+
|   Develop   |---->|  Tag v*.*   |---->|   Release   |
|   on main   |     |  or v*-rc*  |     |  Published  |
+-------------+     +-------------+     +-------------+
                           |
                    GitHub Actions
                    builds & publishes
```

See [RELEASE-PROCESS.md](https://github.com/jcaldwell-labs/project-conductor/blob/main/docs/RELEASE-PROCESS.md) for detailed guidelines.

---

## What's Coming Next

### Now - Active Development

```
+--------------------------------------------------------------------+
|  IN PROGRESS                                                       |
+--------------------------------------------------------------------+
|                                                                    |
|  my-grid           Sprint 005: AI Integration                      |
|  |-- MCP Server for AI agent integration (Warp, Claude)            |
|  +-- mygrid-cli command-line canvas tool                           |
|                                                                    |
|  boxes-live        Core Features                                   |
|  |-- Undo/redo functionality                                       |
|  |-- Connection lines between boxes                                |
|  +-- Box resizing with mouse                                       |
|                                                                    |
|  fintrack          Sprint 001: Bug Fixes                           |
|  +-- Fix usage documentation tests                                 |
|                                                                    |
+--------------------------------------------------------------------+
```

### Next Up - Planned

```
+--------------------------------------------------------------------+
|  NEXT SPRINT                                                       |
+--------------------------------------------------------------------+
|                                                                    |
|  my-grid           Sprint 004: Zone Types                          |
|  +-- Shader parameter presets - save/load configurations           |
|                                                                    |
|  adventure-engine  Sprint 002: DSL Enhancements                    |
|  |-- Conditional room descriptions                                 |
|  +-- World creation tutorial                                       |
|                                                                    |
|  atari-style       Sprint 001: Educational Content                 |
|  +-- Enhance visibility and discoverability                        |
|                                                                    |
|  my-context        Quality & Features                              |
|  |-- MCP server implementation                                     |
|  +-- Increase test coverage                                        |
|                                                                    |
+--------------------------------------------------------------------+
```

### Future - Backlog Highlights

```
+--------------------------------------------------------------------+
|  BACKLOG                                                           |
+--------------------------------------------------------------------+
|                                                                    |
|  Cross-Project Integrations                                        |
|  |-- my-grid <-> boxes-live canvas format import                   |
|  |-- adventure-engine <-> my-context session tracking              |
|  +-- terminal-stars -> shared termgfx library extraction           |
|                                                                    |
|  Platform Expansion                                                |
|  |-- terminal-stars WebAssembly browser demo                       |
|  +-- fintrack database migration system                            |
|                                                                    |
|  Advanced Features                                                 |
|  |-- adventure-engine multiplayer IPC sync                         |
|  |-- atari-style GLSL shader exploration                           |
|  +-- my-grid zoom/overview navigation                              |
|                                                                    |
+--------------------------------------------------------------------+
```

---

## Projects

### Developer Tools & Utilities

| Repository | Description | Status | Version |
|------------|-------------|--------|---------|
| [my-context](https://github.com/jcaldwell-labs/my-context) | Context management and agent journaling for AI-assisted development | ![Active](https://img.shields.io/badge/status-active-success) | v3.1.0 |
| [fintrack](https://github.com/jcaldwell-labs/fintrack) | Financial tracking and analysis tool | ![Active](https://img.shields.io/badge/status-active-success) | - |
| [capability-catalog](https://github.com/jcaldwell-labs/capability-catalog) | Capability and skill catalog system | ![Active](https://img.shields.io/badge/status-active-success) | - |

### Terminal Applications

| Repository | Description | Status | Version |
|------------|-------------|--------|---------|
| [boxes-live](https://github.com/jcaldwell-labs/boxes-live) | Interactive terminal canvas with pan and zoom - like Miro for the terminal | ![Active](https://img.shields.io/badge/status-active-success) | v1.0.0 |
| [my-grid](https://github.com/jcaldwell-labs/my-grid) | ASCII canvas editor with zones, shaders, and AI integration | ![Active](https://img.shields.io/badge/status-active-success) | - |
| [terminal-stars](https://github.com/jcaldwell-labs/terminal-stars) | Starfield visualization with frame buffering and motion effects | ![Active](https://img.shields.io/badge/status-active-success) | - |
| [smartterm-prototype](https://github.com/jcaldwell-labs/smartterm-prototype) | Claude Code-inspired terminal UI with scrolling, context awareness, status bar | ![Production](https://img.shields.io/badge/status-production-blue) | v1.2.0 |

### Games & Interactive Experiences

| Repository | Description | Status | Version |
|------------|-------------|--------|---------|
| [tario](https://github.com/jcaldwell-labs/tario) | ASCII side-scrolling platformer game in C using ANSI escape codes | ![Active](https://img.shields.io/badge/status-active-success) | - |
| [adventure-engine-v2](https://github.com/jcaldwell-labs/adventure-engine-v2) | Text-based adventure game engine built in C with smart terminal UI | ![Active](https://img.shields.io/badge/status-active-success) | - |
| [atari-style](https://github.com/jcaldwell-labs/atari-style) | Terminal-based interactive demos inspired by classic Atari aesthetics | ![Prototype](https://img.shields.io/badge/status-prototype-yellow) | - |

### Organization & Infrastructure

| Repository | Description | Status |
|------------|-------------|--------|
| [project-conductor](https://github.com/jcaldwell-labs/project-conductor) | Release coordination and cross-project orchestration | ![Active](https://img.shields.io/badge/status-active-success) |
| [.github](https://github.com/jcaldwell-labs/.github) | Organization profile and community health files | ![Active](https://img.shields.io/badge/status-active-success) |

### Legend

- ![Active](https://img.shields.io/badge/status-active-success) **Active** - Under active development or maintenance
- ![Production](https://img.shields.io/badge/status-production-blue) **Production** - Stable and production-ready
- ![Prototype](https://img.shields.io/badge/status-prototype-yellow) **Prototype** - Experimental, proof-of-concept stage

---

## Technology Stack

Projects across the organization use a variety of languages and tools:

| Language | Projects | Specialty |
|----------|----------|-----------|
| **C** | smartterm, boxes-live, adventure-engine, terminal-stars, tario | Terminal graphics, games, low-level systems |
| **Go** | my-context, fintrack | CLI tools, performance-critical utilities |
| **Python** | my-grid, atari-style, capability-catalog | Rapid prototyping, shaders, data analysis |

Common patterns:
- ANSI escape codes for terminal graphics and control
- Frame buffering for smooth animations
- Context-aware tooling and AI integration
- Cross-platform compatibility (Linux, macOS, BSD)

---

## Contributing

We welcome contributions from the community! Whether you're fixing bugs, adding features, improving documentation, or sharing ideas, your help is appreciated.

### Getting Started

1. **Choose a project** - Browse the repositories above and find one that interests you
2. **Read the docs** - Check the project's README and our [CONTRIBUTING.md](CONTRIBUTING.md) guide
3. **Start small** - Look for issues tagged `good-first-issue` or `help-wanted`
4. **Join the discussion** - Ask questions in [Discussions](https://github.com/orgs/jcaldwell-labs/discussions)

### Good First Issues

New to the project? Look for these labels across repositories:
- `good-first-issue` - Well-defined, beginner-friendly tasks
- `help-wanted` - Issues where we'd appreciate community help
- `documentation` - Docs improvements that don't require deep codebase knowledge

### Quick Links

- [Contributing Guidelines](CONTRIBUTING.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Security Policy](SECURITY.md)
- [Release Process](https://github.com/jcaldwell-labs/project-conductor/blob/main/docs/RELEASE-PROCESS.md)

---

## Project Health

| Metric | Status |
|--------|--------|
| Active Repositories | 10 |
| Open Issues | ~155 |
| Languages | C, Go, Python, Shell |
| CI Coverage | 7/10 projects |
| Release Automation | All projects |

---

## Contact

- **Organization**: [@jcaldwell-labs](https://github.com/jcaldwell-labs)
- **Maintainer**: [@jcaldwell1066](https://github.com/jcaldwell1066)

---

<div align="center">

**Built with love by the JCaldwell Labs community**

[Projects](#projects) | [Roadmap](#whats-coming-next) | [Contributing](#contributing) | [Releases](#release-train)

</div>
