## More Redirections & Pipes

- `<<` - Used for here documents
  - Appending `-` will strip tabs from the beginning of lines
```bash
grep correct <<-EOF
wrong
right
correct
EOF
```

- `<<<` - Used for here strings
```bash
sed 's/fl/b/' <<<"flash"
```

- Pipes allow you to send stdout from one program to another’s stdin
- `|&` redirects stderr as well
```bash
cat myfile.txt | grep 'myname'
sudo apt update |& tee myLog.txt
```