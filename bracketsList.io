squareBrackets := method(
    l := List clone
    call message arguments foreach(arg,
        l append(arg)
    )
    l
)

a := [3, 5, 6]
a println
