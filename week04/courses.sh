#codes=""
for zid in `mlalias $1 | grep -v ":" | sed "s/^ *//"`
do

    #codes="$codes\n$(acc "$zid" | egrep -o "[A-Z]{4}[0-9]{4}_Student" | egrep -o '[A-Z]{4}[0-9]{4}')"
    #codes=$(echo -e "$codes")
    #echo "$codes"
    acc "$zid" | egrep -o "[A-Z]{4}[0-9]{4}_Student" | egrep -o '[A-Z]{4}[0-9]{4}'
done | sort | uniq -c | sort -n
