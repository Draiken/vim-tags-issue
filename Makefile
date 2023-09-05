build:
	docker build -t vim-issue .

run:
	#docker run -it --rm -v $(PWD):/code vim-issue vim -u /code/.vimrc b.rb
	docker run -it --rm -v $(PWD):/code vim-issue bash
