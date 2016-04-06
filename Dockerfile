FROM node:4.4.2

# Install of packages starting with "poppins-"
#
# https://github.com/btford/poppins-check-cla
# https://github.com/btford/poppins-check-commit
# https://www.npmjs.com/package/poppins-deadline
# https://github.com/btford/poppins-exec
# https://github.com/btford/poppins-label
# https://github.com/btford/poppins-pin
# https://github.com/btford/poppins-pr-checklist
# https://github.com/frapontillo/poppins-pr-vote
# https://github.com/btford/poppins-prioritize

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
