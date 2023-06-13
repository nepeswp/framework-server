FROM deepo:server
ARG UID
ARG GID
RUN useradd -s /bin/bash -G sudo -u $UID -m user && \
    groupmod -g $GID user && \
    passwd -d user && \
    mv -f /root/.back_server.sh /root/.local /root/.jupyter /root/.bashrc /root/.zsh* /root/.oh-my-zsh /root/.vim* /home/user/ 
RUN  chown -R $UID:$GID /home/user
USER user
WORKDIR /home/user
CMD /bin/bash
