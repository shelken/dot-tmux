set dotenv-load
# install:
#   #!/usr/bin/env bash
#   if which brew > /dev/null 2>&1; then
#     brew install neovim neofetch lazygit tmux yazi jq unar poppler fd ffmpegthumbnailer 
#   elif which apt > /dev/null 2>&1; then
#     apt-get install -y tmux neofetch
#   elif which dnf > /dev/null 2>&1; then 
#     dnf copr enable tkbcopr/fd \
#     && dnf install -y tmux yazi jq fd neofetch
#   else 
#     echo 无法安装
#   fi
#
# init: install 
#   -git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#   ln -f .tmux.conf ~/.tmux.conf
#
# tf *args:
#   @~/.tmux/plugins/tmuxifier/bin/tmuxifier {{args}}

tmux-test:
  @rsync -avz --copy-links --chmod=D2755,F744 {{justfile_directory()}}/tmux.conf ~/.tmux.conf

tmux-clean:
  @rm -f ~/.tmux.conf
