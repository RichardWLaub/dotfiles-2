# Keep "Brewfile" in current directory (doesn't need to be copied)

osx-grab:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc" ".zshenv" ".skhdrc") \
	; for file in "$${FILES[@]}"; do \
		cp ~/"$${file}" .; \
	done \
	; declare -a DIRECTORIES=() \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ~/"$${directory}" .; \
	done

osx-put:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc" ".zshenv" ".skhdrc") \
	; for file in "$${FILES[@]}"; do \
		cp ./"$${file}" ~; \
	done \
	; declare -a CLEAR_DIRECTORIES=(".tmux") \
	; for directory in "$${CLEAR_DIRECTORIES[@]}"; do \
		rm -rf ~/"$${directory}"/*; \
	done \
	; declare -a DIRECTORIES=(".oh-my-zsh" ".tmux" ".vim" ".zsh" ) \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ./"$${directory}" ~; \
	done
