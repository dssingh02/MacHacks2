Sleep 10000
Loop, 1 {
    MouseMove, 0, 0, 0
    Send #{PrintScreen}
    Loop, 8 {
        MouseClickDrag, left, 1500, 540, 500, 540, 20
        MouseMove, 0, 0, 0
        Send #{PrintScreen}
        Sleep 500
    }
    MouseClickDrag, left, 960, 700, 960, 300, 20
    MouseMove, 0, 0, 0
    Send #{PrintScreen}
    Loop, 8 {
        MouseClickDrag, left, 500, 540, 1500, 540, 20
        MouseMove, 0, 0, 0
        Send #{PrintScreen}
        Sleep 500
    }
    MouseClickDrag, left, 960, 700, 960, 300, 20
}