# dotfiles
try to use docker to build my editor environment

arch linux + sakura terminal

yay

docker-compose stop && docker-compose up -d --build && docker exec -it dotfiles_dot_1 /bin/zsh

docker-compose up -d --build
docker exec -it dotfiles_dot_1 /bin/bash

docker-compose stop

# issue: MacOS doesn't have /etc/passwd.......
