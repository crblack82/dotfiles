
set -eufo pipefail

mkdir -p ~/.vim/pack/myplugins/start
cd ~/.vim/pack/myplugins/start

echo 'Installing Sensible plugin'
git clone https://tpope.io/vim/sensible.git

echo 'Installing Syntastic plugin'
git clone https://github.com/vim-syntastic/syntastic.git