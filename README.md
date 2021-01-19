# Questrade Password Paste (MacOS, OSX, Mac.)
* Launches the Questrade Edge IQ app and enters the login ID and password for the account.
* This is a workaround to not being able to paste a password into the Questrade Edge IQ app login window.

## Step 1. Edit EditMe.txt
* This is where the credentials are entered.
* **Remove the credentials** after the next step.

## Step 2. Execute RunMe.sh
* When executed an application, Questrade Credentials.app, is created.
* This application is placed in the user's Application folder.

## Questrade Credentials.app
* **This file contains the username and password.**
* It is located in the the user's Application folder.
* For this app to work the original Questrade app must be installed.

## More than one account
* More than one account can be used.
* Create a copy of the Questrade IQ Edge app with a different name.
** E.g. Questrade IQ Edge copy
* Edit EditMe.txt and change:
** "Questrade IQ Edge" to "Questrade IQ Edge copy"
* Follow the steps above.

This code started with code from https://github.com/EugeneDae/Force-Paste
