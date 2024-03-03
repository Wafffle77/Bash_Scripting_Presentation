## Redirections & Pipes

- Bash allows you to manipulate file descriptors in programs you run
- `>` - Direct stdout into a file, overwriting any previous contents
```bash
echo Overwriting > myFile.txt
```

- `>>` - Direct stdout into a file, appending to the previous contents
```bash
echo Appending >> myFile.txt
```

- `<` - Read stdin from a file
```bash
grep Over < myFile.txt
```