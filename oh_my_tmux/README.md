

## Install

https://github.com/gpakosz/.tmux?tab=readme-ov-file#installation


## Config

* do all config in `~/.tmux.config.local`
* my config
  * study original `.tmux.config.local`, and make C-q the prefix key
  * unbind C-b & C-a to make C-q the only prefix key
  * `unbind _` and `bind | split-window -h` to use `|` to split vertically
  * in `.zshrc`, add `export EDITOR="vim"`
  * clipboard: check `tmux_conf_copy_to_os_clipboard` in `.tmux.config.local`, different OS might need different settings
  * clipboard buffer: just use `choose-buffer`, not sure if it's a good idea
    * ```
      # buffers, just use choose-buffer
      # if only want to list-buffer, use choose-buffer and esc to get ont
      # if only want to paste-buffer -p (paste top buffer), enable the OS clipboard feature above, and just use the OS paste command
      unbind b
      unbind p
      unbind P
      bind b choose-buffer
      ```
  * windows
    * `unbind c`
    * `bind C-n new-window`
    * `bind C-w confirm-before -p "kill this window ? (y/n)" kill-window`
