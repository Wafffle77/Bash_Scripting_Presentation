## Exit Codes & Boolean Operations

- The exit code (or status code) is a number in the range of `0` to `255` that denotes the status of a program after it exits. 
- This is usually `0` for success and anything non-zero for failure
- The variable `$?` contains the status code of the last command
- The `&&` operator can be used to run another command only if the previous one exited with a `0` status code.
```bash
true && echo success
```
- The `||` operator can be used to run another command only if the previous one exited with a non-zero status code.
```bash
false || echo failure
```