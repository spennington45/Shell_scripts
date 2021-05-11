#!/bin/bash
# All of the student repository folders
repoList="adamweaver adesuwaosagie alexanderleschkies aliceculin-ellison anitasirchia corrinscriber davidlearner jasoncoffman joncamerer joshuapeplow juliaengman kylehightower morganbrenner nataliejenkins parkerhorn patricestafford ratikgambhir ronfleming serorsalman sethumberger tylersteinman vilasinisarveswara"
# Iterate thru the list running 'npm install' and 'npm run test' in each repo
for curRepo in $repoList; do
	cd ~/workspace/te/green-students/$curRepo/module-3/09_Event_Handling/exercise-student/shopping-list
	npm install
	npm run test
	echo
	cd ..
	cd calculator
	npm install
	npm run test
    echo
	echo "Press Enter to continue..."
	read
done