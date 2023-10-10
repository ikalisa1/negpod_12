#!/bin/bash

students_file="students-list_0923.txt"

# Function to create a new student record
create_student() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read student_id

    # Append the student information to the students file
    echo "$email, $age, $student_id" >> "$students_file"
    echo "Student record added successfully."
}

# Function to view all students
view_students() {
    if [ -e "$students_file" ]; then
        cat "$students_file"
    else
        echo "No students found."
    fi
}

# Function to delete a student record by student ID
delete_student() {
    echo "Enter student ID to delete:"
    read delete_id

    # Use grep to exclude the line with the specified student ID
    grep -v "$delete_id" "$students_file" > temp.txt
    mv temp.txt "$students_file"
    echo "Student record with ID $delete_id deleted."
}

# Function to update a student record by student ID
update_student() {
    echo "Enter student ID to update:"
    read update_id

    # Use grep to exclude the line with the specified student ID
    grep -v "$update_id" "$students_file" > temp.txt

    echo "Enter updated student email:"
    read email
    echo "Enter updated student age:"
    read age
    echo "Enter updated student ID:"
    read student_id

    # Append the updated student information to the file
    echo "$email, $age, $student_id" >> temp.txt
    mv temp.txt "$students_file"
    echo "Student record with ID $update_id updated."
}

# Main menu loop
while true; do
    echo "ALU Registration System"
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student Record"
    echo "4. Update Student Record"
    echo "5. Exit"

    read choice
    case $choice in
        1) create_student;;
        2) view_students;;
        3) delete_student;;
        4) update_student;;
        5) exit;;
        *) echo "Invalid choice. Please try again.";;
    esac
done

