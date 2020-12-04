FROM archlinux
LABEL desription="mini blackarch"
RUN pacman -Syy -y
RUN curl -O https://blackarch.org/strap.sh
RUN echo d062038042c5f141755ea39dbd615e6ff9e23121 strap.sh | sha1sum -c
RUN chmod +x strap.sh
RUN ./strap.sh
RUN pacman -Syu --noconfirm
RUN pacman -S dhclient \
            w3m \
            hping \
            openssh \
            fish \
--noconfirm
ENTRYPOINT ["bin/fish"]
