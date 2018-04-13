FROM node:carbon

# Install app dependencies
RUN  git clone https://github.com/DaniyalMarghoob/nodeGrafana/ && \
	 cd nodeGrafana

WORKDIR nodeGrafana
RUN npm install
EXPOSE 3001
CMD [ "node", "index.js" ]