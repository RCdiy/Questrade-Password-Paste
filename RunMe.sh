#!/bin/bash
APP_NAME="Questrade Credentials.app"		# replace the text between quotes
APP_FOLDER_PATH="$HOME/Applications"		# must not have trailing /

# BUILD ##############################################
INFO_PLIST="$APP_NAME/Contents/Info.plist"

rm -rf "$APP_NAME"
osacompile -o "$APP_NAME" -x "EditMe.txt"
/usr/libexec/PlistBuddy -c "Set CFBundleIconFile icon" "$INFO_PLIST"

rm -f "$APP_NAME/Contents/Resources/applet.icns"
cp "icon.icns" "$APP_NAME/Contents/Resources/"

# INSTALL ###############################################
mv "$APP_NAME" "$APP_FOLDER_PATH/$APP_NAME"
chmod 700 "$APP_FOLDER_PATH/$APP_NAME"
echo
echo "File placed in $APP_FOLDER_PATH/$APP_NAME"
echo "Warning! This file has your credentials."
echo

# Prepare UNINSTALL###############################################
APP_UNINSTALL="$APP_FOLDER_PATH/$APP_NAME"
UNINSTALL_FILE_NAME="$APP_NAME Uninstall.sh"
#echo '#!/bin/bash'	> "$UNINSTALL_FILE_NAME"
#echo 'echo "The following will be removed:"'  >> "$UNINSTALL_FILE_NAME"
#echo 'echo $APP_UNINSTALL' 										>> "$UNINSTALL_FILE_NAME"
#echo 'read -p "Proceed? (yes/no): " RESPONSE' >> "$UNINSTALL_FILE_NAME"
#echo 'echo $RESPONSE' 										>> "$UNINSTALL_FILE_NAME"
echo 'if [ "$RESPONSE" == "yes" ]; then'	>> "$UNINSTALL_FILE_NAME"
#echo '	rm -rf $APP_UNINSTALL' 					>> "$UNINSTALL_FILE_NAME"
LINE1='osascript -e "tell application \"Finder\""'
LINE2a='-e "move POSIX file'
LINE2b="\"$APP_UNINSTALL\""
LINE2c='to trash'
LINE3='-e "end tell"'
TRASH_COMMAND="$LINE1 $LINE2a $LINE2b $LINE2c $LINE3"
#echo "$TRASH_COMMAND"
#echo '	echo "Done."'  			>> "$UNINSTALL_FILE_NAME"
#echo 'else'									>> "$UNINSTALL_FILE_NAME"
#echo '	echo "Not removed."' 	>> "$UNINSTALL_FILE_NAME"
#echo 'fi'										>> "$UNINSTALL_FILE_NAME"
chmod 700 "$UNINSTALL_FILE_NAME"
echo
echo "To uninstall $APP_UNINSTALL it a terminal run ./$UNINSTALL_FILE_NAME"
echo
echo "To run the app:"
echo "  System Preferences --> Security & Privacy --> Privacy --> Accessibility --> + $APP_NAME"


#read -p 'Username: ' uservar
#read -sp 'Password: ' passvar
