#!/bin/bash

#example-1
echo "Hello" > out.txt      # Overwrite
echo "World" >> out.txt     # Append
wc -l < out.txt             # Read input
ls /bad 2> error.log        # Errors to file
ls /bad &> all.log          # Both outputs to one file

#example-2 
exec 3> file.txt        # Open fd 3 for writing
echo "Hi" >&3           # Write to fd 3
exec 3>&-               # Close fd 3

#example-3
cat <<EOF > info.txt
Name: User
ID: 123
EOF

#example:- Strings (<<<)
read var <<< "hello"
echo $var   # Output: hello

#example:-(involving bed files)
cat <<EOF
Welcome to Bash!
This is a here-document.
EOF

#example :-
echo -n "Enter your name: "
read name
echo "Hello, $name!"

#for printf:-
printf "Hello, %s!\n" "Alice"

# Integer and Float Formatting
printf "You have %d unread messages.\n" 5
printf "Pi ≈ %.2f\n" 3.14159

#Multiple Arguments
printf "%s scored %d out of %d\n" "Bob" 8 10


# File-based output
echo "This is a message" > file.txt
echo "Appending this" >> file.txt

# File-based input
read firstline < file.txt
echo "First line was: $firstline"

# Redirect both STDOUT and STDERR
ls /badpath > output.txt 2> error.txt
ls /anotherbad &> combined.txt

# Here document
cat <<EOF > data.txt
name,score
Alice,90
Bob,85
EOF

# Here string
read line <<< "inline input"
echo "Got line: $line"

# File descriptors
exec 3> temp.txt
echo "Writing to fd 3" >&3
exec 3>&-

# Permanent redirection
exec > all_output.txt
echo "This will go to the file"
date
exec 1>&-  # Close STDOUT

#example for pritnf:-
printf "|%10s|%04d|%-8s|\n" "User" 7 "Active"

#example for :-Additional Bash printf Specifiers
printf "%s\n" "hello\nworld"
printf "%b\n" "hello\nworld"

#example:-
printf "%q\n" "greetings to the world"

#script to set terms:-
TERM=vt100  # Default value
line=$(tty) # Get current terminal

while read dev termtype; do
  if [ "$dev" = "$line" ]; then
    TERM=$termtype
    echo "TERM set to $TERM."
    break
  fi
done < /etc/terms


