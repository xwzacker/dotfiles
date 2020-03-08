# USER_ID = $(id -u)
# export USER_ID

export USER_ID=$(id -u) # in office VM, USER_ID is read-only
export GROUP_ID=$(id -g)
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
