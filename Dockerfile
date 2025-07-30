# 1. Base image
FROM node:18

# 2. Working directory
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy all other project files
COPY . .

# 5. Expose the port (value comes from ENV)
EXPOSE ${PORT}

# 6. Start the app
CMD ["npm", "start"]
