bottles() {
    NUMBER=$1
    if [ $NUMBER -eq "1" ]; then
        echo "1 bottle"
    elif [ $NUMBER -eq "0" ]; then
        echo "no more bottles"
    else
        echo "$NUMBER bottles"
    fi
}

verse() {
    VERSE_NUMBER=$1
    THIS_RUN=$(bottles $VERSE_NUMBER)
    NEXT_RUN=$(bottles `expr $VERSE_NUMBER - 1`)

    echo "$THIS_RUN of beer on the wall, $THIS_RUN of beer.\nTake one down and pass it around, $NEXT_RUN of beer on the wall.\n"
}

verses() {
    echo ""
}

loop() {
    COUNTER=$1
    while [ $COUNTER -gt 0 ]; do
        echo $COUNTER;
        let COUNTER=COUNTER-1
    done
}

