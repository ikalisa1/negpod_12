#!/bin/bash

# Function to create a student record
create_student_record() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read student_id

    # Save the student record to a file
    echo "$email $age $student_id" >> students-list_0923.txt
    echo "Student record created and saved."
}

# Function to view all students
view_all_students() {
    echo "List of all students:"
    cat students-list_0923.txt
}

# Function to delete a student by student ID
delete_student() {
    echo "Enter student ID to delete:"
    read delete_id

