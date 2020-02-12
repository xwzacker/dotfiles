# UID = $(id -u)
# export UID

#export UID=$(id -u) # in office VM, UID is read-only
export GID=$(id -g)
export UNAME=$(whoami)
export GNAME=$(getent group $(id -g) | cut -d: -f1)
export HOME


echo $UID
echo $GID
echo $HOME
echo $UNAME
echo $GNAME

docker-compose stop && docker-compose up -d --build && docker exec -it dotfiles_dot_1 /bin/zsh

# docker-compose stop
