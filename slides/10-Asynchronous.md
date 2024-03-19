## Asynchronous Commands

- Commands can be run in the background by appending `&` to the end of the line.
```bash
sudo apt update &
```
- They will still print text to the terminal, though.
- The PID of the last command run is stored in the `$!` variable.

```bash
sudo apt update &
APT_PID="$!"
echo "$APT_PID"
```

- You can view background processes with `jobs` and bring them to the foreground with `fg`