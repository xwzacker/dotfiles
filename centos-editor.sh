# UID = $(id -u)
# export UID

export USER_ID=$(id -u)
export GROUT_ID=$(id -g)
export USER_NAME=$(whoami)
export GROUP_NAME=$(getent group $(id -g) | cut -d: -f1)
export HOME


echo $USER_ID
echo $GROUP_ID
echo $HOME
echo $USER_NAME
echo $GROUP_NAME

docker-compose stop && docker-compose up -d --build && docker exec -it dotfiles_dot_1 /bin/zsh

# docker-compose stop
