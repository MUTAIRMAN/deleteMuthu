$sUsername = "admin"
$sPassword = "admin"
Sleep(1000)
For $i = 1 To 20 Step 1
    Sleep(3000)
    $sTitle = WinGetTitle("Sign in")
    If WinWaitActive("[CLASS:Chrome_WidgetWin_1]")  or WinWaitActive("Sign in") Then
        Send($sUsername)
        Send("{TAB}")
        Send($sPassword,1);$SEND_RAW (1)
        Send("{TAB}")
        Send("{ENTER}")
        Exit 0
    Else
        ContinueLoop
    EndIf
Next
Exit 1
