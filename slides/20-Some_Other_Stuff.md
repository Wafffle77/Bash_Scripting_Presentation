## Some other stuff

- Aliases can make it quicker to type common commands

```bash
alias dir='ls -lAsh'
```

- Environment variables can be set using `export`.

```bash
export PATH="$PATH:~/.bin"
```

- The script at `~/.bashrc` is executed when you run bash. You can use it to define functions and aliases.

- If you create scripts with a shebang at the top and make them executable, you can run them like normal commands.

```bash
#!/bin/bash

echo Running like normal!
```