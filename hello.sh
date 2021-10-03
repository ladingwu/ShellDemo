#!/bin/bash





cmdArgs(){
    echo  'this is a word from sh'
    alias today='date +"%A, %B %-d, %Y"'
    echo "一共输入了 $# 个参数"
    a = $1
    while [ "$1" != "" ]; do
      echo "剩下 $# 个参数"
      echo "参数：$1"
      shift
    done

    if [ $a = '0' ]; then
        echo '输入是 0'
    else
        echo '输入不是0'
    fi
}




cmdInput(){
    echo '输入一些文本看看：'
    read text
    echo "你输入的是 $text"
}

cmdCase(){
    echo '输入一些文本看看：'
    read text
    case $text in
        1 ) 
        echo 1 ;;
        2 ) echo 2 ;;
        * ) echo "其他"
    esac
}

cmdWhile(){
    input="a"
    while [ "$input" != "exit" ]; do
	    echo "请输入"
        read input
        echo "当前输入是 $input"
        sleep 3
    done
}

cmdArray(){
    result=( *.sh )
    echo "数组长度： ${#result[@]} "
    echo "数组遍历"
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
        cmdArgs "$@" 
        ;;
        "cmdInput") cmdInput 
        ;;
        "cmdCase") cmdCase ;;
        "cmdWhile") cmdWhile
        ;;
        
        "cmdArray") cmdArray
        ;;


    esac
}
main