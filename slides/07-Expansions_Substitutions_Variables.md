## Expansions & Substitutions

- In addition to pipes, you can also substitute the stdout of a command with `$()`
  - The inside of the substitution can contain more redirections and pipes
```bash
mv -t example_scripts -- $(find . -name '*.sh')
```

- However, if the stdout contains whitespace, it’ll be counted as separate arguments. Surrounding the substitution with quotes can mitigate this issue.
  - Single quotes (`'`) prevent expansion
  - Double quotes (`"`) allow for expansion while preventing whitespace issues

- This happens because the stdout of the command is replacing the `$(...)` in the command line.
- This is a core property of Bash.