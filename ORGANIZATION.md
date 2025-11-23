# JCaldwell Labs Organization Documentation

This document outlines the standards, conventions, and best practices for all repositories in the jcaldwell-labs organization.

## Table of Contents

- [Repository Standards](#repository-standards)
- [Naming Conventions](#naming-conventions)
- [Topic and Label Standards](#topic-and-label-standards)
- [Branch Protection](#branch-protection)
- [Technology Stack](#technology-stack)
- [Project Categories](#project-categories)
- [Release Management](#release-management)

## Repository Standards

### Repository Structure

All repositories should include:

- `README.md` - Project overview, setup, and usage instructions
- `LICENSE` - Open source license (typically MIT or Apache 2.0)
- `.gitignore` - Language/framework appropriate ignore rules
- `CHANGELOG.md` - Version history and release notes (for stable projects)

Optional but recommended:
- `Makefile` - Build automation (for C/Go projects)
- `requirements.txt` / `go.mod` / etc. - Dependency management
- `.github/workflows/` - CI/CD automation
- `docs/` - Extended documentation
- `examples/` - Usage examples

### README Requirements

Every repository README must include:

1. **Project name and description** - Clear, concise summary
2. **Status badge** - Active, Production, or Prototype
3. **Features** - Key functionality highlights
4. **Installation** - Setup and build instructions
5. **Usage** - Basic usage examples
6. **Requirements** - Dependencies and prerequisites
7. **Contributing** - Link to [CONTRIBUTING.md](CONTRIBUTING.md)
8. **License** - License information

### Documentation Standards

- Use **clear, concise language**
- Include **code examples** with syntax highlighting
- Add **screenshots or demos** for visual projects
- Keep **installation steps** up-to-date
- Document **common issues** and solutions
- Use **tables** for structured information
- Include **badges** for build status, coverage, etc.

## Naming Conventions

### Repository Names

Format: `lowercase-with-hyphens`

**Guidelines:**

- **Tools/Libraries**: Descriptive, functional names
  - ✅ `my-context`, `fintrack`
  - ❌ `tool1`, `utility-app`

- **Games**: Short, memorable, thematic names
  - ✅ `tario`, `adventure-engine-v2`
  - ❌ `game-project`, `platformer-game`

- **Prototypes**: Include `-prototype` suffix or descriptive concept name
  - ✅ `smartterm-prototype`, `atari-style`
  - ❌ `test-project`, `poc`

- **Infrastructure**: Descriptive system names
  - ✅ `.github`, `jcaldwell-labs`
  - ❌ `org-config`, `meta-repo`

### Code Naming Conventions

#### C Projects

```c
// Files: snake_case.c, snake_case.h
// Functions: snake_case()
// Variables: snake_case
// Constants: UPPER_CASE
// Macros: UPPER_CASE
// Types: PascalCase or snake_case_t

#define MAX_BUFFER_SIZE 1024
typedef struct Canvas canvas_t;

int initialize_canvas(canvas_t *canvas, int width, int height);
```

#### Go Projects

```go
// Files: lowercase.go or snake_case.go
// Packages: lowercase
// Types: PascalCase (exported) or camelCase (private)
// Functions: PascalCase (exported) or camelCase (private)
// Variables: camelCase or PascalCase (exported)
// Constants: PascalCase or UPPER_CASE for exported

const MaxRetries = 3

type ConfigManager struct {
    config *Config
}

func LoadConfig(path string) (*Config, error) {
    // Implementation
}
```

#### Python Projects

```python
# Files: snake_case.py
# Modules: snake_case
# Classes: PascalCase
# Functions: snake_case
# Variables: snake_case
# Constants: UPPER_CASE

MAX_CONNECTIONS = 100

class MetricsCollector:
    def __init__(self):
        self.data = []

    def collect_metrics(self, source: str) -> dict:
        # Implementation
        pass
```

## Topic and Label Standards

### Repository Topics

Apply relevant topics for discoverability:

**Application Type:**
- `terminal` - Terminal/console applications
- `cli` - Command-line interfaces
- `tui` - Text-based user interfaces
- `game` - Games and interactive entertainment
- `library` - Reusable libraries
- `developer-tools` - Development utilities
- `productivity` - Productivity applications

**Primary Language:**
- `c` - C projects
- `go` - Go projects
- `python` - Python projects
- `shell` - Shell scripts
- `javascript` - JavaScript/Node.js projects

**Development Stage:**
- `experimental` - Experimental/research projects
- `prototype` - Proof-of-concept implementations
- `production` - Production-ready software
- `archived` - Archived/unmaintained

**Technology/Focus:**
- `ansi-graphics` - ANSI escape code graphics
- `ai` - AI/ML integration
- `context-aware` - Context-aware tooling
- `game-engine` - Game engines
- `financial` - Financial applications

### Issue Labels

Standard labels across repositories:

**Type:**
- `bug` - Something isn't working
- `enhancement` - New feature or request
- `documentation` - Documentation improvements
- `question` - Questions or help requests

**Priority:**
- `critical` - Urgent, blocking issues
- `high` - High priority
- `medium` - Medium priority
- `low` - Low priority, nice-to-have

**Status:**
- `needs-triage` - Needs initial review
- `in-progress` - Currently being worked on
- `blocked` - Blocked by dependencies
- `wontfix` - Won't be fixed/implemented
- `duplicate` - Duplicate of another issue

**Skill Level:**
- `good-first-issue` - Good for newcomers
- `help-wanted` - Community help appreciated
- `advanced` - Requires deep knowledge

**Component:**
- Use project-specific labels (e.g., `rendering`, `input`, `ui`, `parser`)

## Branch Protection

### Main Branch

The `main` branch is protected with the following rules:

- **Require pull request reviews** - At least 1 approval required
- **Require status checks** - CI must pass before merge
- **No force pushes** - Prevents history rewriting
- **No deletions** - Prevents accidental deletion
- **Enforce for administrators** - Rules apply to all users

### Branch Naming

**Feature branches:**
```
feature/short-description
feature/issue-123-description
```

**Bug fix branches:**
```
fix/short-description
fix/issue-456-bug-name
```

**Documentation branches:**
```
docs/topic-name
docs/update-readme
```

**Release branches:**
```
release/v1.2.0
release/v2.0.0-beta
```

## Technology Stack

### Supported Languages

#### C (Primary for games/terminal apps)
- **Version**: C99 or C11
- **Compilers**: GCC 9+, Clang 10+
- **Build**: Make, CMake
- **Testing**: Custom test harnesses, Check framework
- **Linting**: cppcheck, clang-tidy

#### Go (Primary for CLI tools)
- **Version**: Go 1.21+
- **Build**: Native go build
- **Testing**: Native go test with race detector
- **Linting**: golangci-lint
- **Formatting**: gofmt, goimports

#### Python (Primary for scripting)
- **Version**: Python 3.10+
- **Package Manager**: pip, poetry
- **Testing**: pytest
- **Linting**: ruff, mypy
- **Formatting**: black

#### Shell (Build scripts, automation)
- **Version**: Bash 4.0+
- **Linting**: shellcheck
- **Formatting**: shfmt

### Common Dependencies

- **Terminal**: ANSI escape sequences, termcap/terminfo
- **Build**: Make, shell scripts
- **Version Control**: Git
- **CI/CD**: GitHub Actions
- **Documentation**: Markdown, GitHub Pages

## Project Categories

### Developer Tools

**Focus**: Productivity, workflow enhancement, context awareness

**Examples**: `my-context`, `fintrack`

**Requirements**:
- Comprehensive documentation
- Error handling and validation
- Cross-platform compatibility
- Unit and integration tests
- Version stability

### Terminal Applications

**Focus**: Interactive terminal UIs, visual effects, user experience

**Examples**: `boxes-live`, `terminal-stars`, `smartterm-prototype`

**Requirements**:
- Smooth rendering (60 FPS target for animations)
- Terminal compatibility testing
- Graceful terminal resize handling
- Clean exit and terminal reset
- Performance optimization

### Games

**Focus**: Entertainment, gameplay, user engagement

**Examples**: `tario`, `adventure-engine-v2`, `atari-style`

**Requirements**:
- Responsive controls (low input latency)
- Clear game mechanics and rules
- Save/load functionality (where applicable)
- Difficulty balancing
- Fun and engaging experience

### Infrastructure

**Focus**: Organization management, community health, standards

**Examples**: `.github`, `jcaldwell-labs`

**Requirements**:
- Clear documentation
- Community-friendly policies
- Up-to-date templates
- Accessible information

## Release Management

### Version Numbering

Follow [Semantic Versioning](https://semver.org/): `MAJOR.MINOR.PATCH`

- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

**Examples**:
- `1.0.0` - Initial stable release
- `1.1.0` - Added new feature
- `1.1.1` - Fixed bug
- `2.0.0` - Breaking API change

### Pre-release Versions

- `1.0.0-alpha.1` - Alpha releases (unstable)
- `1.0.0-beta.1` - Beta releases (feature complete, testing)
- `1.0.0-rc.1` - Release candidates (final testing)

### Release Process

1. **Update version** in relevant files
2. **Update CHANGELOG.md** with release notes
3. **Create git tag**: `git tag -a v1.0.0 -m "Release v1.0.0"`
4. **Push tag**: `git push origin v1.0.0`
5. **Create GitHub release** with notes and artifacts
6. **Publish packages** (if applicable)
7. **Announce** in Discussions

### Changelog Format

```markdown
## [1.1.0] - 2024-11-23

### Added
- New zoom functionality for canvas
- Keyboard shortcuts for common operations

### Changed
- Improved rendering performance by 40%
- Updated documentation with new examples

### Fixed
- Fixed crash when terminal is resized during animation
- Corrected color rendering on some terminals

### Removed
- Deprecated legacy API endpoints
```

## Continuous Integration

### GitHub Actions

All projects should have basic CI:

```yaml
# Minimum CI requirements
- Build verification
- Test execution
- Linting/formatting checks
- Security scanning (if applicable)
```

**For C projects**:
- Compile with warnings enabled
- Run valgrind for memory leak detection
- Test on multiple platforms (Linux, macOS)

**For Go projects**:
- `go test ./...`
- `go test -race ./...`
- `golangci-lint run`

**For Python projects**:
- `pytest --cov`
- `mypy .`
- `ruff check .`

## Questions?

For questions about organization standards:
- Open a [Discussion](https://github.com/orgs/jcaldwell-labs/discussions)
- Check [CONTRIBUTING.md](CONTRIBUTING.md)
- Contact [@jcaldwell1066](https://github.com/jcaldwell1066)

---

**Last Updated**: November 2025
