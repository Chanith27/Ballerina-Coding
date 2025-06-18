import ballerina/io;

public function main() returns error? {
    // Read first number
    io:println("Enter first number: ");
    string input1 = check io:readln();
    int num1 = check int:fromString(input1);

    // Read second number
    io:println("Enter second number: ");
    string input2 = check io:readln();
    int num2 = check int:fromString(input2);

    // Calculate and print sum
    int sum = num1 + num2;
    io:println("The sum is: " + sum.toString());
}