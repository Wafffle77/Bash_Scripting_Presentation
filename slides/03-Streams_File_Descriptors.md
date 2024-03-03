## Streams & File Descriptors

- File descriptors are numbers that references files that a program has open.

- Every program has three file descriptors in common:
  - `0` – stdin (What functions like `scanf()` and `gets()` read from)
  - `1` – stdout (Where functions like `printf()` and `puts()` write to)
  - `2` – stderr (An additional output stream intended for errors)