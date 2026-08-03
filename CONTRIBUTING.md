# Contributing to TCL_Programing

Thanks for your interest in contributing! This repository is a structured, topic-by-topic collection of Tcl programming examples and notes, organized as a learning resource. Contributions that improve clarity, fix bugs, or extend coverage of Tcl topics are welcome.

## Repository Structure

The project is organized into numbered topic folders that roughly follow a learning progression:

```
01_introduction/
02_variables_and_data_types/
03_string_operations/
04_arithmetic_and_expressions/
05_control_flow/
06_loops/
07_procedures/
08_lists/
09_arrays/
10_dictionaries/
11_file_handling/
12_regular_expressions/
13_error_handling/
14_packages_and_namespaces/
15_advanced_topics/
```

Each folder is meant to hold self-contained `.tcl` scripts (and, where useful, short notes) that demonstrate the concepts named by the folder. Please keep new material inside the folder that matches its topic rather than creating new top-level folders, unless a new topic genuinely doesn't fit anywhere existing — in that case, open an issue first to discuss it.

## Ways to Contribute

- **Fix bugs or errors** in existing `.tcl` scripts (typos, incorrect output, deprecated syntax).
- **Add new examples** to an existing topic folder that cover a case not yet demonstrated.
- **Improve comments/documentation** inside scripts so they're easier to learn from.
- **Propose a new topic folder** for a Tcl concept not yet covered (please open an issue first).
- **Improve the README** or add a table of contents / index linking to each topic.

## Getting Started

1. Fork the repository.
2. Clone your fork:
   ```bash
   git clone https://github.com/<your-username>/TCL_Programing.git
   cd TCL_Programing
   ```
3. Create a branch for your change:
   ```bash
   git checkout -b add-regex-example
   ```
4. Make your changes.
5. Test that your script actually runs:
   ```bash
   tclsh path/to/your_script.tcl
   ```
6. Commit and push, then open a pull request against `main`.

## File and Naming Conventions

- Use lowercase, descriptive filenames with underscores, e.g. `string_reverse.tcl`, `list_sort_example.tcl`.
- Place each new script in the topic folder it belongs to (e.g. a `dict` example goes in `10_dictionaries/`).
- Start each script with a short comment header explaining what it demonstrates:
  ```tcl
  # Demonstrates: basic list creation and iteration
  ```
- Keep examples focused — one concept per script is preferable to one large script covering many concepts.
- Avoid platform-specific commands where possible; if a script depends on something Unix/Windows-specific, note it in a comment.

## Code Style

- Use consistent 4-space indentation.
- Prefer clear variable names over abbreviations.
- Add inline comments for any non-obvious Tcl idiom (Tcl's syntax can be surprising to newcomers, so a short explanation goes a long way).

## Pull Request Guidelines

- Keep pull requests focused on a single topic or fix — avoid bundling unrelated changes.
- Describe what your change adds or fixes in the PR description.
- If adding a new script, mention which concept it demonstrates and why it's a useful addition.
- Make sure any script you add runs cleanly with `tclsh` before submitting.

## Reporting Issues

If you spot an error in an existing script, find something confusing, or want to suggest a new topic, please open an issue describing:

- The file/folder affected
- What's wrong or what you'd like to see added
- Any relevant Tcl version details, if applicable

## Code of Conduct

Be respectful and constructive. This repository is meant to be a helpful learning resource — feedback and contributions should reflect that spirit.

---

Maintained by [Mihir Mithani](https://github.com/Mihir-Mithani).
