#code1
#!/bin/bash
if [ "$1" = "bioinfo" ]; then
  echo "You passed the keyword 'bioinfo'."
fi
#code2
if [ -d "$1" ]; then
  echo "$1 is a directory."
else
  echo "$1 is not a directory."
fi
#code3
#!/bin/bash
if [ "$1" = "A" ]; then
  echo "You selected A"
elif [ "$1" = "B" ]; then
  echo "You selected B"
else
  echo "Unknown selection"
fi

#code4
if [ -f "data.txt" ]; then
  echo "data.txt exists."
fi
 
 #code5
 if [ -f "$1" ] && [ -r "$1" ]; then
  echo "File exists and is readable."
fi

#code6
#!/bin/bash
case "$1" in
  start)
    echo "Starting process..."
    ;;
  stop)
    echo "Stopping process..."
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    ;;
esac

#code7
#!/bin/bash
count=1
while [ $count -le 5 ]; do
  echo "Count is $count"
  count=$((count + 1))
done

#code8
#!/bin/bash
num=1
until [ $num -gt 3 ]; do
  echo "Number is $num"
  num=$((num + 1))
done

#code9
#!/bin/bash
for file in *.fasta; do
  echo "Found file: $file"
done

#code10
for i in {1..5}; do
  if [ "$i" -eq 3 ]; then
    break
  fi
  echo "$i"
done

#eg_1
#!/bin/bash
# Check if FASTA file exists and count sequences

fasta="$1"

if [ ! -f "$fasta" ]; then
  echo "File not found!"
  exit 1
fi

count=0
while read -r line; do
  if [[ $line == ">"* ]]; then
    count=$((count + 1))
  fi
done < "$fasta"

echo "Number of sequences: $count"

#eg_2
#!/bin/bash


num=10


if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
elif [ $num -eq 5 ]; then
    echo "Number is exactly 5"
else
    echo "Number is less than 5"
fi
