var Root
var Box

function performClick() {
    //Javascript in a signal handler
    print("Javascript in a signal handler")
    var max = Root.width - Box.width
    Box.x = (Box.x === 0) ? max : 0//Notice the IDE gets picky about operators == vs ===

}

function swapColor(obj) {
    return obj.pressed ? "orange" : "gray"
}


function startup(croot, cbox) {
    print("Starting!!")

    Root = croot
    Box = cbox
}


function clicked(mouse) {
    print("Clicked!!")
    performClick()
}
