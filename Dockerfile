FROM node:4.4.2

WORKDIR /var/src
RUN npm install -g mary-poppins
RUN npm install                 \
        poppins-check-commit    \
        poppins-deadline        \
        poppins-exec            \
        poppins-label           \
        poppins-mock            \
        poppins-pin             \
        poppins-pr-checklist    \
        poppins-pr-vote         \
        poppins-prioritize --save
ADD config.js /var/src/config.js
EXPOSE 80
CMD mary-poppins start config.js
