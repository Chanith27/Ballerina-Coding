import ballerina/io;

public function main() returns error? {
    io:println("Enter First Name: ");
    string firstname = check io:readln();

    io:println("Enter Your Last Name: ");
    string lastname = check io:readln();

    string fullname = firstname + " " + lastname;

    io:println("The Full name is : " + fullname);
}