# Security Policy

## Supported Projects

JCaldwell Labs maintains several experimental projects, developer tools, and terminal applications. Security updates are primarily focused on:

- **Production**: `my-context`, `fintrack`
- **Active Development**: `boxes-live`, `smartterm-prototype`, `adventure-engine-v2`
- **Prototype/Experimental**: `terminal-stars`, `tario`, `atari-style`

## Reporting a Vulnerability

We take security seriously across all projects in the jcaldwell-labs organization. If you discover a security vulnerability, please follow these steps:

### 1. Do Not Publicly Disclose

Please do not open a public issue or discussion about the vulnerability. This protects users while we work on a fix.

### 2. Report Privately

Send a detailed report to [@jcaldwell1066](https://github.com/jcaldwell1066) through one of these methods:

- **GitHub**: Send a direct message or use the repository's private vulnerability reporting feature if enabled
- **Email**: Contact the maintainer directly through their GitHub profile

### 3. Include Details

Your report should include:

- **Project and version** affected
- **Type of vulnerability** (e.g., code injection, authentication bypass, etc.)
- **Step-by-step reproduction** instructions
- **Potential impact** of the vulnerability
- **Suggested fix** (if you have one)
- **Your contact information** for follow-up questions

### Response Timeline

We aim to respond to security reports according to the following timeline:

- **Initial Response**: Within 48 hours of receipt
- **Status Update**: Within 5 business days with assessment and timeline
- **Resolution**: Varies based on severity and complexity
  - Critical: Within 7 days
  - High: Within 14 days
  - Medium/Low: Within 30 days

### What to Expect

1. **Acknowledgment**: We'll confirm receipt of your report
2. **Assessment**: We'll evaluate the vulnerability and determine severity
3. **Fix Development**: We'll work on a patch or mitigation
4. **Disclosure**: After the fix is deployed, we'll coordinate disclosure
5. **Credit**: We'll acknowledge your contribution (unless you prefer to remain anonymous)

## Security Best Practices

When using or contributing to jcaldwell-labs projects:

### For Users

- Keep dependencies up to date
- Review code before running, especially for terminal applications that use ANSI escape codes
- Use caution when providing sensitive data to experimental tools
- Report suspicious behavior or unexpected prompts

### For Contributors

- Follow secure coding practices
- Validate all user inputs
- Avoid hardcoded credentials or tokens
- Use parameterized queries for database operations
- Sanitize data before rendering in terminal applications
- Be mindful of command injection risks in shell-based tools

## Scope

This security policy applies to all repositories under the jcaldwell-labs organization, including:

- Source code in all repositories
- Published releases and packages
- Documentation and examples
- CI/CD pipelines and automation

**Note**: This policy does not cover:
- Vulnerabilities in third-party dependencies (report those to the respective maintainers)
- Issues in forked repositories (unless explicitly adopted by jcaldwell-labs)
- Social engineering or phishing attacks

## Security Updates

Security patches will be:

- Released as soon as possible after verification
- Documented in the affected repository's changelog
- Announced in release notes with severity level
- Tagged appropriately for version control

For critical vulnerabilities, we may release emergency patches outside the normal release cycle.

## Questions?

If you have questions about this security policy or need clarification on the reporting process, please open a discussion in the relevant repository or contact [@jcaldwell1066](https://github.com/jcaldwell1066).

---

**Last Updated**: November 2025
