testSuccess(){
    ping -c 10 11.192.168.6
    if [[ $? != 0 ]]; then
        echo "ping fail"
        exit 1
    else
        echo "ping ok"
        exit 0
    fi
}

testFail(){
    ping -c 10 11.192.168.6
    if [[ $? != 0 ]]; then
        echo "ping fail"
        exit 0
    else
        echo "ping ok"
        exit 1
    fi
}

if [ -n "$1" ]; then
    if [ "$1" == "reverse" ]; then
        testFail
    else
        testSuccess
    fi
else
    testSuccess
fi