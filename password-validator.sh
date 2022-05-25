#!/bin/bash
#password Validator script
#Length – minimum of 10 characters.
#Contain both alphabet and number.
#Include both the small and capital case letters.
#Color the output green if it passed the validation and red if it didn’t.
#Return exit code 0 if it passed the validation and exit code 1 if it didn’t.
#If a validation failed provide a message explaining why
#Make sure your script can run automatically without the need for human intervention
#Write the script in the best possible way (for performance and UX)

ERROR_COLOR='\033[0;31m'
RESET_COLOR='\033[0m'
VALID_COLOR='\033[0;32m'

PASSWORD=$1

FLAG=0
#check if password lenght at least 10 character
if [ ${#PASSWORD} -ge 10 ]; then
    ((FLAG++))
else
    echo $ERROR_COLOR"Password most be at least 8 caracter"$RESET_COLOR
fi
#check if password contain lowwe case letter
if [[ $PASSWORD =~ [a-z] ]]; then
    ((FLAG++))
else
    echo $ERROR_COLOR"Password does not contain lowerCase latter"$RESET_COLOR
fi
#check if paswword contain upper case letter
if [[ $PASSWORD =~ [A-Z] ]]; then
    ((FLAG++))
else
    echo $ERROR_COLOR"Password does not contain upperCase letter"$RESET_COLOR
fi
#check if passowrd contain number
if [[ $PASSWORD =~ [0-9] ]]; then
    ((FLAG++))
else
    echo $ERROR_COLOR"Password does not contain Number" $RESET_COLOR
fi

if [ $FLAG -eq 4 ]; then
    echo $VALID_COLOR"Password vailid - Strong Password"$RESET_COLOR
    echo $?
    exit 0
else
    echo $?
    exit 1
fi
