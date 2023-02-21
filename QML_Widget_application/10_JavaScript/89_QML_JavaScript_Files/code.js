function func(obj) {

    //javascript in signel handler
    print("javascript in signel handler")
    var max = root.width - obj.width
     obj.x = (obj.x === 0) ? max : 0//Notice the IDE gets picky about operators == vs ===
}

function swapColor(obj) {
    return obj.pressed ? "orange" : "gray"
}



