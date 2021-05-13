#!/bin/bash
# All of the student repository folders
repoList="adamweaver adesuwaosagie alexanderleschkies aliceculin-ellison anitasirchia corrinscriber davidlearner jasoncoffman joncamerer joshuapeplow juliaengman kylehightower morganbrenner nataliejenkins parkerhorn patricestafford ratikgambhir ronfleming serorsalman sethumberger tylersteinman vilasinisarveswara"
# Iterate thru the list running 'npm install' and 'npm run test' in each repo
for curRepo in $repoList; do
	cd ~/workspace/NLR2-student-repos/java-green/$curRepo/module-3/11_Introduction_to_Vue_and_Data_Binding/exercise-student
	npm install
	npm run test:unit
    echo
	echo "Press Enter to continue..."
	read
done