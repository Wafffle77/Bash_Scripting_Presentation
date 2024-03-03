## Expansions, Substitutions, & Variables

- In addition to pipes, you can also substitute the stdout of a command with `$()`
  - The inside of the substitution can contain more redirections and pipes
```bash
mv -t example_scripts -- $(find . -name '*.sh')
```

- However, if the stdout contains whitespace, it’ll be counted as separate arguments. Surrounding the substitution with quotes can mitigate this issue.
  - Single quotes (`'`) prevent expansion
  - Double quotes (`"`) allow for expansion while preventing whitespace issues

- Variables are assigned with `=`
```bash
MY_VAR=$(cat myfile.txt | grep 'myname')
```

- Variables can be referenced with
```bash
$MY_VAR
```