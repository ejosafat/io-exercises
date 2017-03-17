Builder := Object clone
Builder spaces := 0;
Builder forward := method(
    spaces repeat (" " print)
    writeln("<", call message name, ">")
    self spaces := spaces + 2
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            spaces repeat (" " print)
            writeln(content)
        )
    )
    self spaces := spaces - 2
    spaces repeat (" " print)
    writeln("</", call message name, ">")
)
Builder div(
    ul(
        li(h3("Io"), p("Eros")),
        li("Lua"),
        li("JavaScript")
    )
)

