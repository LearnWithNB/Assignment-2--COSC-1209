# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set the environment variable NODE_ENV with a value of production
ENV NODE_ENV=production

# Create a new directory named "assignment2" in the root
RUN mkdir /assignment2

# Change the ownership of the "assignment2" directory to the node user and node group
RUN chown node:node /assignment2

# Set the "assignment2" directory as the working directory
WORKDIR /assignment2

# Set the user to node
USER node

# Copy the package.json file from the "Assignment 1 Files" directory to the "/assignment2" directory
COPY --chown=node:node ./Assignment\ 2\ Files/Assignment\ 1\ Files/package.json /assignment2/package.json

# Run the npm install command to install your node.js packages
RUN npm install

# Expose port 3000
EXPOSE 3000

# Set the default execution command to node src/index.js
CMD ["node", "src/index.js"]