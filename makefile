
README.md:
	touch README.md
	echo "# This is a guessing game" > README.md
	echo "This makefile was generated on: " >> README.md
	date >> README.md
	echo "Number of lines in geussinggame.sh: " >> README.md
	wc -l guessinggame.sh | grep -o "[0-9]*" >> README.md

clean:
	rm README.md
