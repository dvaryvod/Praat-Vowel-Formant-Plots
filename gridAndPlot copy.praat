form Enter formants
boolean Garnish 1
real F1 800
real F2 1200
sentence IPA \ae
integer Font_size 14
real min_F1 200
real max_F1 5000
real min_F2 200
real max_F2 7000
endform

if garnish = 1
	call grid
endif
call plot

procedure plot
Text special... -'f2:2' Centre -'f1:2' Half Times 'font_size' 0 'iPA$'
endproc

procedure grid
Erase all
Viewport... 0 6 0 4
Line width... 1
Font size... 12
Times
Black
Plain line
Axes... max_F2 min_F2 max_F1 min_F1
Draw inner box
Marks bottom... 5 yes yes yes 
Marks left... 5 yes yes yes
Text left... yes %F_1 (Hz)
Text bottom... yes %F_2 (Hz)
Axes... -max_F2 -min_F2 -max_F1 -min_F1
endproc


