# JCaldwell Labs

> Making knowledge work visible and persistent in terminal environments

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

## Vision

The terminal is where developers live. We build tools that make work **visible** and **persistent** there:

- **Visible**: See multiple streams of information at once, understand context at a glance
- **Persistent**: Don't lose what you learned, where you were, or why you made decisions

Our tools work *with* the grain of how work actually happens, not requiring ceremony to use.

---

## Core Platform

Our strategic focus - these tools are designed to work together:

| Repository | Description | Status |
|------------|-------------|--------|
| [my-context](https://github.com/jcaldwell-labs/my-context) | Context tracking for development sessions. Answer "what did I do and why?" | ![Production](https://img.shields.io/badge/status-production-blue) |
| [my-grid](https://github.com/jcaldwell-labs/my-grid) | Terminal workspace with zones (PTY, WATCH, PIPE). See multiple things at once. | ![Active](https://img.shields.io/badge/status-active-success) |
| [smartterm-prototype](https://github.com/jcaldwell-labs/smartterm-prototype) | cc-bash: Claude Code-style TUI for bash with three-region layout | ![Prototype](https://img.shields.io/badge/status-prototype-yellow) |

### The Synergy

```
my-context ──────► tracks what you're doing across sessions
     │
     ▼
my-grid ─────────► shows multiple things at once (including context state)
     │
     ▼
cc-bash ─────────► structured command execution (future: my-grid zone type)
```

---

## Supporting Projects

### Visual Effects & Teaching Tools

| Repository | Description | Purpose |
|------------|-------------|---------|
| [atari-style](https://github.com/jcaldwell-labs/atari-style) | Retro shader effects, Lissajous curves, terminal graphics | Visual effects library for terminal apps |
| [terminal-stars](https://github.com/jcaldwell-labs/terminal-stars) | Starfield visualization with frame buffering | Minimalist shader teaching tool |
| [boxes-live](https://github.com/jcaldwell-labs/boxes-live) | Interactive canvas with pan/zoom | Canvas mode exploration for my-grid |

### Sample Applications & Games

| Repository | Description | Purpose |
|------------|-------------|---------|
| [fintrack](https://github.com/jcaldwell-labs/fintrack) | Financial tracking and analysis | Sample app demonstrating jcaldwell-labs patterns |
| [adventure-engine-v2](https://github.com/jcaldwell-labs/adventure-engine-v2) | Text adventure game engine in C | Teaching tool for terminal game development |
| [tario](https://github.com/jcaldwell-labs/tario) | ASCII side-scrolling platformer | Game prototype |

### Meta & Organization

| Repository | Description |
|------------|-------------|
| [project-conductor](https://github.com/jcaldwell-labs/project-conductor) | Strategic orchestration and progress tracking ([2026 Vision](https://github.com/jcaldwell-labs/project-conductor/tree/master/docs/planning)) |
| [capability-catalog](https://github.com/jcaldwell-labs/capability-catalog) | Schema for documenting agent capabilities |

---

## 2026 Direction

**The shift**: From measuring project health by git activity → measuring by "Does anyone use this? Does it help them?"

### Goals

- Ship **my-context** to 10+ external users
- Consolidate terminal TUI into **my-grid** as unified platform
- **cc-bash** becomes zone type in my-grid
- Make tools invisible (auto-trigger, not ceremony)

See [full strategic vision](https://github.com/jcaldwell-labs/project-conductor/tree/master/docs/planning) in project-conductor.

---

## Technology

| Language | Use Case |
|----------|----------|
| **Go** | CLI tools (my-context, fintrack) |
| **Haskell** | Terminal UIs (my-grid uses Brick) |
| **C** | Low-level terminal apps, games (cc-bash, adventure-engine) |
| **Python** | Scripting, shader effects |

Common patterns:
- ANSI escape codes for terminal graphics
- Frame buffering for smooth animations
- Context-aware tooling
- Cross-platform (Linux, macOS, WSL)

---

## Getting Involved

### Try my-context

Our most mature tool - track your development sessions:

```bash
go install github.com/jcaldwell-labs/my-context@latest
my-context start "my-project"
my-context note "Working on feature X"
my-context export my-project
```

### Contribute

1. **Start with my-context or my-grid** - Our strategic focus
2. **Look for `good-first-issue`** - Beginner-friendly tasks
3. **Join [Discussions](https://github.com/orgs/jcaldwell-labs/discussions)** - Share ideas

### Quick Links

- [Contributing Guidelines](CONTRIBUTING.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Security Policy](SECURITY.md)

---

## Philosophy

We believe:

- Tools should capture context as **byproduct**, not explicit action
- "Good enough and shipped" beats "perfect and in progress"
- The terminal is **underutilized** for making work visible
- Meta-layers should be **invisible**, not ceremonial

---

<div align="center">

**Built for developers who live in terminals**

[Core Platform](#core-platform) · [2026 Direction](#2026-direction) · [Get Involved](#getting-involved)

**Maintainer**: [@jcaldwell1066](https://github.com/jcaldwell1066)

</div>
