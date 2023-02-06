
all: replace-author replace-pintop


replace-pintop:
	bash ./scripts/replace-pintop.sh

replace-author:
	bash ./scripts/replace-author.sh
	
