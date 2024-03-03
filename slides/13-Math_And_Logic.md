## Math & Logic

- Math can be done inside of double parentheses.
  - `$((9 + 10))`
  - `$(($? + 7))`
- Conditions can be tested using the test command. The status code reflects the results of the test.
  - `test –f myFile.txt`
  - `test $? –eq 7`
  - `test "$(cat myFile.txt)" != "Hello, World"`

- Test can also be used with `[`, though the last argument has to be `]`
  - `[ $? –ne 0 ]`
