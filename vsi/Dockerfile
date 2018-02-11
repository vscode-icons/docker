FROM vscodeicons/nodejs:7.9.0
ENV task ''
RUN apk add --no-cache git libgit2-dev gcc g++
RUN git clone https://github.com/vscode-icons/vscode-icons.git /vscode-icons
VOLUME [ "/vsi-out" ]
WORKDIR /vscode-icons
COPY task.sh .
CMD [ "sh", "./task.sh", "${task}" ]
