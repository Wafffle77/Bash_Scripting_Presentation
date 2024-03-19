## Functions

Functions can be accessed just like regular programs once they are defined
```bash
function mkcd() {
    mkdir -p $1 && cd $1
}

mkcd myNewDir
```