FROM habitat/devshell
RUN hab install core/hab-sup
RUN hab install core/hab-studio
RUN echo "set -o vi" >> /root/.bash_profile
COPY setup/vimrc /root/.vimrc
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall
