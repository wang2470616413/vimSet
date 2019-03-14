#!/bim/bash
cd ~
for file in $(ls -a)
do
	if [ ${file} = "vimrc" ] || [ ${file} = ".vim" ]  || [ ${file} = ".vimrc" ]
	then
		echo ${file}
		rm -rf ${file}
	fi
done
git clone https://github.com/wang2470616413/vimrc 
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
sudo apt-get install cmake
dirvimrc=~/vimrc/
cd ${dirvimrc}
for file in $(ls -a)
do
	if [ ${file} = ".vimrc" ]
	then
		echo ${file}
		cp ${file} ../${file}
	fi
done
cd ~
for file in $(ls -a)
do
	if [ ${file} = "vimrc" ] 
	then
		echo ${file}
		rm -rf ${file}
	fi
done
vim +BundleInstall +qall
cd ~/.vim/bundle/YouCompleteMe/
./install.py
cd ~
