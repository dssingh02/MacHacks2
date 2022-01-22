Sleep 10000
Loop, 12 {
	MouseMove, 0, 0, 0
	Send #{PrintScreen}
	Loop, 8 {
		MouseClickDrag, left, 2300, 720, 500, 720, 20
		MouseMove, 0, 0, 0
		Send #{PrintScreen}
		Sleep 500
	}
	MouseClickDrag, left, 1400, 1200, 1400, 250, 20
	MouseMove, 0, 0, 0
	Send #{PrintScreen}
	Loop, 8 {
		MouseClickDrag, left, 500, 720, 2300, 720, 20
		MouseMove, 0, 0, 0
		Send #{PrintScreen}
		Sleep 500
	}
	MouseClickDrag, left, 1400, 1200, 1400, 250, 20
}
