# Contributing to JCaldwell Labs

Thank you for your interest in contributing! This guide covers the contribution process for all repositories in the jcaldwell-labs organization.

## Table of Contents

- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Code Standards](#code-standards)
- [Testing Requirements](#testing-requirements)
- [Pull Request Process](#pull-request-process)
- [Project Categories](#project-categories)

## Getting Started

### Prerequisites

Different projects use different technologies. Common requirements include:

- **C Projects**: GCC or Clang compiler, Make
- **Go Projects**: Go 1.21 or higher
- **Python Projects**: Python 3.10 or higher, pip
- **Shell Projects**: Bash 4.0+, common Unix utilities

Check the individual repository README for specific requirements.

### Setting Up Your Environment

1. **Fork the repository** you want to contribute to
2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git
   cd REPOSITORY-NAME
   ```
3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/jcaldwell-labs/REPOSITORY-NAME.git
   ```
4. **Install dependencies** (see project README)

## Development Workflow

### Branch Strategy

- `main` - Production-ready code
- `develop` - Integration branch for features (if applicable)
- `feature/*` - New features
- `fix/*` - Bug fixes
- `docs/*` - Documentation updates

### Making Changes

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Keep your branch updated**:
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

3. **Make focused commits**:
   - One logical change per commit
   - Write clear, descriptive commit messages
   - Reference issues when applicable (`Fixes #123`)

### Commit Message Format

```
<type>: <subject>

<body>

<footer>
```

**Types**:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

**Example**:
```
feat: add zoom functionality to canvas

Implements zoom in/out using + and - keys with configurable
zoom levels. Maintains aspect ratio and centers on cursor position.

Closes #42
```

## Code Standards

### General Principles

- **Simplicity**: Keep code simple and readable
- **Consistency**: Follow existing patterns in the codebase
- **Documentation**: Comment complex logic, not obvious code
- **Performance**: Consider performance for terminal applications (frame rates, memory usage)

### Language-Specific Standards

#### C Code

- Use **snake_case** for functions and variables
- Use **UPPER_CASE** for constants and macros
- Follow **K&R** or **Linux kernel** style for bracing
- **Header guards**: Use `#ifndef PROJECT_FILE_H`
- **Memory management**: Free all allocated memory, check for leaks
- **Error handling**: Check return values, use appropriate error codes

```c
// Good example
int initialize_canvas(Canvas *canvas, int width, int height) {
    if (!canvas || width <= 0 || height <= 0) {
        return -1;
    }

    canvas->buffer = malloc(width * height * sizeof(char));
    if (!canvas->buffer) {
        return -1;
    }

    canvas->width = width;
    canvas->height = height;
    return 0;
}
```

#### Go Code

- Follow **standard Go formatting** (`gofmt`, `goimports`)
- Use **meaningful variable names** (no single letters except in short loops)
- **Error handling**: Always check and handle errors appropriately
- **Documentation**: Add godoc comments for exported functions

```go
// Good example
// LoadConfig reads configuration from the specified file path.
// It returns an error if the file cannot be read or parsed.
func LoadConfig(path string) (*Config, error) {
    data, err := os.ReadFile(path)
    if err != nil {
        return nil, fmt.Errorf("failed to read config: %w", err)
    }

    var config Config
    if err := json.Unmarshal(data, &config); err != nil {
        return nil, fmt.Errorf("failed to parse config: %w", err)
    }

    return &config, nil
}
```

#### Python Code

- Follow **PEP 8** style guidelines
- Use **type hints** for function signatures
- **Docstrings**: Use for modules, classes, and functions
- **Line length**: 88 characters (Black formatter default)

```python
# Good example
def calculate_metrics(
    data: list[dict[str, Any]],
    start_date: datetime,
    end_date: datetime
) -> MetricsSummary:
    """Calculate financial metrics for the specified date range.

    Args:
        data: List of transaction dictionaries
        start_date: Start of the analysis period
        end_date: End of the analysis period

    Returns:
        MetricsSummary object containing calculated metrics

    Raises:
        ValueError: If date range is invalid
    """
    if start_date >= end_date:
        raise ValueError("start_date must be before end_date")

    # Implementation...
    return summary
```

#### Shell Scripts

- Use **bash** explicitly (`#!/bin/bash`)
- Quote variables: `"$variable"` not `$variable`
- Check command success: Use `set -e` or check `$?`
- Use **shellcheck** for linting

## Testing Requirements

### Before Submitting

- [ ] Code builds without warnings
- [ ] All existing tests pass
- [ ] New features have tests
- [ ] Manual testing completed
- [ ] No memory leaks (for C projects)

### Testing by Project Type

#### C Projects

```bash
# Compile with warnings
make clean && make CFLAGS="-Wall -Wextra -Werror"

# Test for memory leaks
valgrind --leak-check=full ./your-program

# Run tests (if test suite exists)
make test
```

#### Go Projects

```bash
# Run all tests
go test ./...

# Run tests with coverage
go test -cover ./...

# Run tests with race detector
go test -race ./...

# Run specific tests
go test -v -run TestYourFunction
```

#### Python Projects

```bash
# Run tests with pytest
pytest

# Run with coverage
pytest --cov=. --cov-report=html

# Type checking
mypy .

# Linting
ruff check .
```

### Adding Tests

- **Unit tests**: Test individual functions/methods
- **Integration tests**: Test component interactions
- **Edge cases**: Test boundary conditions and error cases
- **Terminal UI**: Verify ANSI output and rendering

## Pull Request Process

### Before Opening a PR

1. **Sync with upstream**:
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Run tests and checks**:
   - All tests pass
   - Code follows style guidelines
   - No compiler warnings
   - Documentation is updated

3. **Update documentation**:
   - README if adding features
   - Code comments for complex logic
   - CHANGELOG if applicable

### Opening a Pull Request

1. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create PR** on GitHub with:
   - Clear, descriptive title
   - Reference to related issues
   - Description of changes
   - Testing performed
   - Screenshots/demos for UI changes

3. **Fill out the PR template** (all sections)

### PR Review Process

- Maintainers will review within 3-5 business days
- Address review feedback with new commits
- Keep discussion professional and constructive
- Once approved, maintainers will merge

### PR Checklist

- [ ] Code follows project style guidelines
- [ ] Tests added/updated and passing
- [ ] Documentation updated
- [ ] Commit messages are clear
- [ ] No merge conflicts
- [ ] PR description is complete
- [ ] Related issues are referenced

## Project Categories

### Developer Tools

**my-context**, **fintrack**
- Focus on usability and reliability
- Comprehensive error handling
- Clear documentation
- Integration testing

### Terminal Applications

**boxes-live**, **terminal-stars**, **smartterm-prototype**
- Performance critical (smooth rendering)
- Cross-platform terminal compatibility
- Graceful handling of terminal resize
- Clean exit and terminal reset

### Games

**tario**, **adventure-engine-v2**, **atari-style**
- Fun and engaging mechanics
- Responsive controls
- Clear win/loss conditions
- Consistent physics/behavior

### Infrastructure

**.github**, **jcaldwell-labs** (coordination)
- Clear documentation
- Examples where applicable
- Community health files

## Getting Help

- **Questions**: Open a Discussion in the repository
- **Bugs**: Open an Issue with reproduction steps
- **Features**: Open an Issue to discuss before implementing
- **Security**: See [SECURITY.md](SECURITY.md)

## Code of Conduct

All contributors must follow our [Code of Conduct](CODE_OF_CONDUCT.md). We are committed to providing a welcoming and inclusive environment.

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (see LICENSE file in each repository).

---

Thank you for contributing to JCaldwell Labs! 🚀
