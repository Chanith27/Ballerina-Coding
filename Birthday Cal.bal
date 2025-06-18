import ballerina/io;
import ballerina/time;

public function main() returns error? {
    // Get current date once
    time:Civil today = check time:utcToCivil(time:utcNow());

    // Read birth year (with basic validation)
    io:println("Enter your birth year (e.g., 1990): ");
    int birthYear = check int:fromString(check io:readln());
    if birthYear < 1900 || birthYear > today.year {
        return error("Invalid year!");
    }

    // Read birth month (1-12)
    io:println("Enter your birth month (1-12): ");
    int birthMonth = check int:fromString(check io:readln());
    if birthMonth < 1 || birthMonth > 12 {
        return error("Invalid month!");
    }

    // Read birth day (1-31)
    io:println("Enter your birth day (1-31): ");
    int birthDay = check int:fromString(check io:readln());
    if birthDay < 1 || birthDay > 31 {
        return error("Invalid day!");
    }

    // Calculate age
    int age = today.year - birthYear;
    if (birthMonth > today.month || 
        (birthMonth == today.month && birthDay > today.day)) {
        age -= 1;  // Subtract 1 if birthday hasn't occurred yet
    }

    io:println("You are " + age.toString() + " years old.");
}