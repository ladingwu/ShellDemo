#!/bin/bash





cmdArgs(){
    echo  'this is a word from sh'
    alias today='date +"%A, %B %-d, %Y"'
    echo "һ�������� $# ������"
    a = $1
    while [ "$1" != "" ]; do
      echo "ʣ�� $# ������"
      echo "������$1"
      shift
    done

    if [ $a = '0' ]; then
        echo '������ 0'
    else
        echo '���벻��0'
    fi
}




cmdInput(){
    echo '����һЩ�ı�������'
    read text
    echo "��������� $text"
}

cmdCase(){
    echo '����һЩ�ı�������'
    read text
    case $text in
        1 ) 
        echo 1 ;;
        2 ) echo 2 ;;
        * ) echo "����"
    esac
}

cmdWhile(){
    input="a"
    while [ "$input" != "exit" ]; do
	    echo "������"
        read input
        echo "��ǰ������ $input"
        sleep 3
    done
}

cmdArray(){
    result=( *.sh )
    echo "���鳤�ȣ� ${#result[@]} "
    echo "�������"
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