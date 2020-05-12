README.md:
	touch README.md
	echo "# A Guessing Game" >> README.md
	echo "This README was created at the following time:" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "The guessinggame.sh script has the following number of lines of code." >> README.md
	wc -l guessinggame.sh >> README.md
