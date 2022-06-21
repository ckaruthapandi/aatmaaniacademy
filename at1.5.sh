#/bin/bash
echo "Enter Two numbers : "
read a
read b
echo -e " 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division"
echo "please select the operation" 
read o
a=5
b=10
case $o in
  1)echo "sum $((a + b))"  ;;
  2)echo "subtraction $((a - b ))"  ;;
  3)echo "multiplication $((a * b))" ;;
  4)echo  "division $((a / b))"  ;;
  *) echo "enter valid operation"
esac
