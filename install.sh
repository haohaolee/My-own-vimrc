if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install amix's vimrc:"
  echo "   sh .vim/install.sh <system>"
  echo "      - where <system> can be 'mac' or 'linux'"
  exit 1
fi

cat > ~/.vimrc <<EOF
fun! MySys()
return "$1"
endfun
source ~/.vim/vimrc
helptags ~/.vim/doc
EOF

echo "Installed amix's vim configuration successfully! Enjoy :)"
