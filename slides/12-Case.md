## Case

The `case` statement allows for a somewhat cleaner representation of multiple conditions than nested if statements

```bash
case $# in
    1)
        echo "Not enough arguments!"
        ;;
    2)
        printf "%s: %s\n" "$1" "$2"
        ;;
    3)
        echo "Too many arguments"
        ;;
    *)
        echo huh?
        ;;
esac
```