
#!/bin/bash
var1=10
var2=10

# Addition
result=$(expr $var1 + $var2)
echo "The result of addition is: $result"

# Subtraction
result2=$(expr $var1 - $var2)
echo "The result of subtraction is: $result2"

# addition result 
result3=$(expr $result1 + $result2)
echo " This is the aggergate of the two sum : $result3"

# multiplication astrix is a wildcard , thus need to be escaped. 
 # with double parenthesis there is no need to escape the wildcard

result4=$(( $var1 * $var2 ))
echo "This is multiplication result :$result4 "

result5=$( expr $var1 \* $var2 )
echo "This is multiplication result :$result5 "

