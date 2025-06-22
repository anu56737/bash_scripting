#code1
#!/bin/bash

while getopts ":ab:c" opt; do
  case $opt in
    a) echo "Flag -a set" ;;
    b) echo "Option -b with value $OPTARG" ;;
    c) echo "Flag -c set" ;;
    \?) echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done
shift $((OPTIND -1))

#code2:Integer declaration
declare -i count=0
(( count += 5 ))
echo "$count"  # 5

#code3:Arrays
declare -a genes=(A B C)
echo "${genes[1]}"       # banana
genes+=("date")
for i in "${!genes@]}"; do
  echo "Element $i: ${genes[i]}"
done

#code4:Arithmetic Operations
x=10
(( x = x * 2 + 3 ))
echo "$x"  # 23

let "y = x - 5"
echo "$y"  # 18

