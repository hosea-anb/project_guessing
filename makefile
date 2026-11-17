.PHONY: all clean README.md
all: README.md
README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "- Make was run on: $$(date)" >> README.md
	@echo "- Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md
clean:
	rm -f README.md
