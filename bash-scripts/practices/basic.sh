#! /bin/sh

# given permission for file: chmode +x ./basic.sh

# ECHO COMMAND
echo Hi there!

# VARIABLES
# Uppercase convention
# Letters, numbers, underscores

NAME="Tien Duy"
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
#read -p "Enter your name: " NAME_INPUT
#echo "Hello $NAME_INPUT, nice to meet you"

# SIMPLE STATEMENT: IF THEN FI
if [ "$NAME" == "Tien Duy" ]
then
  echo "Your name is Tien Duy"
fi

# IF ELSE
if [ "$NAME" == "Tien Duy" ]
then
  echo "Your name is Tien Duy"
else
  echo "Your name is NOT Tien Duy"
fi

# ELSE-IF (elif)
if [ "$NAME" == "Tien Duy" ]
then
  echo "Your name is Tien Duy"
elif [ "$NAME" == "Yoyo" ]
then
  echo "Your name is Yoyo"
else
  echo "Your name is NOT Tien Duy"
fi


# COMPARISON
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

# FILE CONDITION
FILE="test.txt"
if [ -f "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE not exists"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

#CASE STATEMENT
read -p "Are you 21 or not? Y/N " ANSWER

case "$ANSWER" in
  [yY] | [yY][eE][sS])
   echo "You can have a beer :)"
   ;;
  [nN] | [nN][oO])
   echo "Sorry, no drinking"
   ;;
  *)
   echo "Please enter y/yes or n/no"
   ;;
esac

# SIMPLE FOR LOOP
NAMES="Tien Duy is a backend dev"
for NAME in $NAMES
  do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
  do
    if [[ $FILE != *"new"* ]];then
       echo "Rename $FILE to new-$FILE"
           mv $FILE $NEW-$FILE
    fi
done

# CREATE FILE IF NOT EXIST
NEW_EXIST_FILE="new_1.txt"
if [ ! -e $NEW_EXIST_FILE ] ; then
    echo "Create new_1.txt file"
    touch $NEW_EXIST_FILE
fi

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new_1.txt"

# FUNCTION
function sayHello(){
  echo "Hello world!"
}
sayHello

function greet(){
  echo "Hello, I'm $1 and I'm $2"
}
greet "Tien Duy" 20

# CREATE FOLDER AND WRITE TO FILE
mkdir hello
touch hello/world.txt
echo "Hello world" >> "hello/world.txt"
echo "Created a hello/world.txt file"