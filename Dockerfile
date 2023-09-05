FROM ruby:latest

RUN mkdir /issue /vundle
WORKDIR /code

RUN apt-get update -qq && apt-get install -y vim git curl

RUN gem install solargraph

RUN curl -sL install-node.vercel.app/lts | bash -s -- -y

RUN git clone https://github.com/VundleVim/Vundle.vim.git /vundle/Vundle.vim

COPY .vimrc /issue/.vimrc

RUN vim -E -u /issue/.vimrc "+PluginInstall!" +qall

RUN cd /vundle/coc.nvim && npm install
