all: README.md


README.md: guessinggame.sh other.txt
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub \n" > README.md
	echo -n "README.md created: " >> README.md
	date >> README.md
	echo "\nThe number of lines in guessinggame.sh: \c" >> README.md
	wc -l < ./guessinggame.sh >> README.md

