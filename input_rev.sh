if [ $# -eq 0 ];
 then
    echo "Argument not found"
    exit 1
else
    i=$(echo "$#" | bc)  # Total number of arguments
    temp=""

    while [ $i -gt 0 ]; do
        s=$(echo "$*" | cut -d " " -f"$i")
        temp="$temp $s"
        i=$(expr $i - 1)
    done

    echo "Reversed arguments: $temp"
    echo "Total number of arguments: $#"
fi
