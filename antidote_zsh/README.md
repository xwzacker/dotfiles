
Prepare config first

## Config

copy `.zsh_plugins.txt` file to `~/.zsh_plugins.txt`


## Install
install antidote

https://getantidote.github.io/


## Special config for plugings 

* powerline 10k
  * need this line in zshrc `autoload -Uz promptinit && promptinit`
  * Please enable transient prompt
      * otherwiese, command like `apt-get` will not stay on same page ???
  * `p10k configure` for again configure
* zsh-users/zsh-completions
  * might need this line in zshrc before loading this plugin autoload -Uz compinit && compinit
* zsh-users/zsh-autosuggestions
  * might need this line in zshrc before loading this plugin autoload -Uz promptinit && promptinit


## Other issues
* no such file or directory: ~/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker/docker.plugin.zsh:60: no such file or directory: /Users/hwang/.antigen/bundles/robbyrussell/oh-my-zsh/cache//completions/_docker
  * solution: mkdir $ZSH_CACHE_DIR/completions https://github.com/zsh-users/antigen/issues/701#issuecomment-1129781560

## References
* https://github.com/jkergal/hyperjs-wsl-zsh-powerlevel10k-config-on-windows/

