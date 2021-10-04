#!/bin/bash

cmdArgs(){
    echo  'this is a word from sh'
    alias today='date +"%A, %B %-d, %Y"'
    echo "has input $# params"
    a="$1"
    while [ "$1" != "" ]; do
      echo " $# params left"
      echo "params $1"
      shift
    done

    if [ $a = '0' ]; then
        echo 'input is 0'
    else
        echo 'not 0'
    fi
}




cmdInput(){
    echo 'input some text: '
    read text
    echo "your input is $text"
}

cmdCase(){
    echo 'input some text '
    read text
    case $text in
        1 ) 
        echo 1 ;;
        2 ) echo 2 ;;
        * ) echo "other"
    esac
}

cmdWhile(){
    input="a"
    while [ "$input" != "exit" ]; do
	    echo "input please "
        read input
        echo "current input $input"
        sleep 3
    done
}

cmdArray(){
    result=( *.sh )
    echo "array length  ${#result[@]} "
    echo "array"
    for item in  "${result[@]}"; do
        ls -l $item
    done

}






main(){
    echo "input the method you want test:"
    read methodName

    case $methodName in
        "cmdArgs") 
        echo "$methodName"
        cmdArgs "params" "hha" 
        ;;
        "cmdInput") cmdInput 
        ;;
        "cmdCase") cmdCase ;;
        "cmdWhile") cmdWhile
        ;;
        
        "cmdArray") cmdArray
        ;;
        *)
        echo "not match"
        ;;

    esac
}
main