# Edit using a plane text editor such as Text Edit"

set myLoginID to "RCdiy"									# replace the text between quotes
set myPassword to "wixxoq-ka"							# replace the text between quotes
set appToLaunch to "Questrade IQ Edge" 		# Located in the application folder
set appLaunchDelay to 5 									# wait in seconds for login window

#########################################
tell application appToLaunch to activate
delay appLaunchDelay
tell application "System Events"
	keystroke tab using shift down
	keystroke "a" using command down
	keystroke myLoginID
	keystroke tab
	keystroke myPassword
	keystroke tab
	keystroke tab
	keystroke tab
	keystroke return
end tell
