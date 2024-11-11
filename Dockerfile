FROM node:20

RUN git clone https://github.com/Phantom-kin/KING_PHANTOM.git /root/KING_PHANTOM 

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/KING-PHANTOM/node_modules

# Install dependencies
WORKDIR /root/KING_PHANTOM 
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/STAR-KING0/node_modules
