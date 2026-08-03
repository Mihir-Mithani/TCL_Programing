# Security Policy

## Supported Versions

This repository is a collection of Tcl learning examples and does not follow
formal versioned releases. There is a single actively maintained branch:

| Branch  | Supported          |
| ------- | ------------------ |
| main    | :white_check_mark: |

Only the `main` branch receives fixes. If the project ever adopts tagged
releases, this table will be updated to reflect which versions are
supported with security fixes.

## Reporting a Vulnerability

This is a small, educational codebase (Tcl example scripts), so "vulnerability"
here generally means things like: a script that executes untrusted input
unsafely, an example that encourages an insecure pattern, or a dependency/
script (e.g. in `structure.sh`) that could cause unintended file system
changes.

If you find such an issue:

1. **Do not open a public issue** describing the exploit in detail.
2. Report it privately by opening a [GitHub Security Advisory](https://github.com/Mihir-Mithani/TCL_Programing/security/advisories/new) on this repository, or by contacting the maintainer directly through GitHub ([@Mihir-Mithani](https://github.com/Mihir-Mithani)).
3. Include:
   - The affected file(s) or folder(s)
   - A description of the issue and its potential impact
   - Steps to reproduce, if applicable

### What to expect

- You should receive an acknowledgment within **7 days** of your report.
- I'll aim to confirm whether the issue is valid and provide a status update
  within **14 days**.
- If accepted, a fix will be prioritized and pushed to `main`, and you'll be
  credited in the fix commit/notes unless you prefer to remain anonymous.
- If declined (e.g. not a security issue, or out of scope for a learning
  repository), you'll receive an explanation of the reasoning.

Thanks for helping keep this project safe to learn from.
