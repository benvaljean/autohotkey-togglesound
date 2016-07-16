; togglesound.ahk
; https://github.com/benvaljean/autohotkey-togglesound
; 
; Benjamin Goodacre
;

ScrollLock:: 
  toggle += 1
  if (toggle = 4)
    toggle := 1
  #if

  IfWinExist Sound
    WinActivate
  else
    Run, mmsys.cpl 
    WinWait,Sound ; Change "Sound" to the name of the window in your local language
  #If

  Send {Home}
  if (toggle = 1)
    ControlSend,SysListView321,{Down 1} ; This number selects the matching audio device in the list, change it accordingly 
  #if
  if (toggle = 2)
    ControlSend,SysListView321,{Down 2}
  #if
  if (toggle = 3)
    ControlSend,SysListView321,{Down 3}
  #if
  ControlClick,&Set Default ; Change "&Set Default" to the name of the button in your local language 
return
