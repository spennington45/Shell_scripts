#!/bin/sh

# Author Steven Pennington
# v 1.0
# This script is to automaticly run JUnit test with a given path
# TODO Make it itterate through all student files
# TODO Generate a report

# C:\Users\Student\workspace\te-curriculum\module-1\08_Collections_Part_2\exercise-final\java\src\test\java\com\techelevator\ExercisesTest.java
echo Enter the path of the JUnit test you wish to run.
read path

# Compile JUnit test at given path include class name.java
# Can run multapul classes if seperated by a space
javac -cp junit-4.0.0.jar; $path

# Runs class at givent path include class name.java
java -cp junit-4.0.0.jar; $path