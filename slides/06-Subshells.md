## Subshells
- A subshell allows the code inside of it to be executed in its own subprocess.
- Things like variable assignments inside the subshell stay inside the subshell
- `stdin`, `stdout`, and `stderr` are combined, so pipes read from each of the processes.
```bash
(echo hello; echo world) > myFile.txt
```