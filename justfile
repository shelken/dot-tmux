apt_bool := `which apt | echo $?`
brew_bool := `which brew | echo $?`
dnf_bool := `which dnf | echo $?`
install_statement := if brew_bool == '0' { 
  "brew install tmux yazi jq unar poppler fd ffmpegthumbnailer"
} else if apt_bool == '0' {
  "apt-get install -y tmux yazi jq fd-find"
} else if dnf_bool == '0' {
  "dnf copr enable tkbcopr/fd \
  && dnf install -y tmux yazi jq fd"
}else {
  "echo 无法安装"
}

install:
  @echo {{arch()}}
  @echo {{os()}}
  {{ install_statement }}

init: install 
  ln -f .tmux.conf ~/.tmux.conf
