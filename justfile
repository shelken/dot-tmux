
install:
  #!/usr/bin/env bash
  if which brew > /dev/null 2>&1; then
    brew install neovim lazygit tmux yazi jq unar poppler fd ffmpegthumbnailer 
  elif which apt > /dev/null 2>&1; then
    apt-get install -y tmux yazi jq fd-find
  elif which dnf > /dev/null 2>&1; then 
    dnf copr enable tkbcopr/fd \
    && dnf install -y tmux yazi jq fd
  else 
    echo 无法安装
  fi

init: install 
  ln -f .tmux.conf ~/.tmux.conf
