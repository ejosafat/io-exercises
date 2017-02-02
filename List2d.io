List2D := Object clone
List2D dim := method(num_cols, num_rows,
    self struct := List clone
    num_rows repeat(self struct append((list clone) setSize(num_cols)))
)
List2D set := method(col, row, value,
    self struct at(row) atPut(col, value)
)

List2D get := method(col, row,
    self struct at(row) at(col)
)

List2D transpose := method(
    num_rows := self struct size
    num_cols := self struct first size
    new_matrix := self clone
    new_matrix dim(num_rows, num_cols)
    for (row, 0, num_rows - 1,
        for (col, 0, num_cols - 1,
            new_matrix set(row, col, self get(col, row))
        )
    )
    new_matrix
)

List2D toFile := method(
    f := File clone
    f openForUpdating("./matrix.io")
    f write(self serialized)
    f close
)

List2D fromFile := method(
    doFile("./matrix.io")
)
