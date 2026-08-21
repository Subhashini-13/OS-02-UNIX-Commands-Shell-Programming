#!/bin/bash

echo "===== SHELL PROGRAMS ====="
echo "1. Greatest Among Three Numbers"
echo "2. Factorial"
echo "3. Sum of Odd Numbers"
echo "4. Fibonacci Series"
echo "5. Arithmetic Calculator"
echo "6. Largest Digit"
echo "7. Palindrome"
echo "8. Reverse Number"

echo
read -p "Enter your choice: " choice

case $choice in

1)
    echo "Enter three numbers:"
    read a b c

    if [ $a -gt $b ] && [ $a -gt $c ]
    then
        echo "$a is greatest"
    elif [ $b -gt $c ]
    then
        echo "$b is greatest"
    else
        echo "$c is greatest"
    fi
    ;;

2)
    echo "ENTER THE NUMBER:"
    read n

    fact=1

    while [ $n -gt 1 ]
    do
        fact=$((fact * n))
        n=$((n - 1))
    done

    echo "FACTORIAL OF THE GIVEN NUMBER IS $fact"
    ;;

3)
    echo "ENTER THE RANGE:"
    read n

    x=1
    sum=0

    while [ $x -le $n ]
    do
        sum=$((sum + x))
        x=$((x + 2))
    done

    echo "SUM = $sum"
    ;;

4)
    echo "ENTER THE LIMIT:"
    read n

    p=-1
    q=1
    i=1

    while [ $i -le $n ]
    do
        r=$((p + q))
        p=$q
        q=$r

        echo "$r"

        i=$((i + 1))
    done
    ;;

5)
    echo "ENTER THE VALUE OF A:"
    read a

    echo "ENTER THE VALUE OF B:"
    read b

    echo "1. ADDITION"
    echo "2. SUBTRACTION"
    echo "3. MULTIPLICATION"
    echo "4. DIVISION"

    read op

    case "$op" in
        1) echo "Result = $((a + b))" ;;
        2) echo "Result = $((a - b))" ;;
        3) echo "Result = $((a * b))" ;;
        4) echo "Result = $((a / b))" ;;
        *) echo "Invalid Option" ;;
    esac
    ;;

6)
    echo "ENTER THE NUMBER:"
    read a

    max=0

    while [ $a -gt 0 ]
    do
        r=$((a % 10))

        if [ $r -gt $max ]
        then
            max=$r
        fi

        a=$((a / 10))
    done

    echo "THE LARGEST DIGIT OF THE NUMBER: $max"
    ;;

7)
    echo "ENTER THE STRING:"
    read str

    reverse=$(echo "$str" | rev)

    if [ "$str" = "$reverse" ]
    then
        echo "PALINDROME"
    else
        echo "NOT A PALINDROME"
    fi
    ;;

8)
    echo "ENTER THE NUMBER:"
    read n

    rnum=0

    while [ $n -ne 0 ]
    do
        remainder=$((n % 10))
        rnum=$((rnum * 10 + remainder))
        n=$((n / 10))
    done

    echo "REVERSE OF THE NUMBER IS $rnum"
    ;;

*)
    echo "Invalid Choice"
    ;;

esac
