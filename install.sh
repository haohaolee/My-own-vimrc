if [ "$1" == "" ]; then
  echo "Usage: sh .vim_runtime/install <system>"
  echo "       <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
echo "fun! MySys()\nreturn \"$1\"\nendfun\nset runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME\nsource ~/.vim_runtime/vimrc\nhelptags ~/.vim_runtime/doc" > ~/.vimrc
echo "Installed amix's vim configuration successfully! Enjoy :)"
