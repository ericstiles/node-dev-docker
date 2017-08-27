FROM markadams/chromium-xvfb-js:6

WORKDIR /usr/src/app
ENV NODE_VERSION=6.10.1-2

ENV NODE_HOME="/usr/src/app/"

RUN npm install gulp-cli gulp karma -g

ENV PATH="${NODE_HOME}/node_modules/gulp/bin/:${NODE_HOME}/node_modules/karma/bin/:${PATH}"

CMD echo "node version:"$(node --version); echo "npm version:"$(npm --version); karma --version; chromium --version; echo "gulp version:"$(gulp --version);
