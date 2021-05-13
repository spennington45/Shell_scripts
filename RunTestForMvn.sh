#!/bin/bash
# All of the student repository folders
repoList="adamweaver adesuwaosagie alexanderleschkies aliceculin-ellison anitasirchia corrinscriber davidlearner jasoncoffman joncamerer joshuapeplow juliaengman kylehightower morganbrenner nataliejenkins parkerhorn patricestafford ratikgambhir ronfleming serorsalman sethumberger tylersteinman vilasinisarveswara"
# Iterate thru the list running 'mvn test' in each repo
for curRepo in $repoList; do
	cd ~/workspace/NLR2-student-repos/java-green/$curRepo/module-1/03_Expressions/exercise-student/java
	mvn test
	echo
	echo "Test results for $curRepo"
	echo
	echo "Press Enter to continue..."
	read
done