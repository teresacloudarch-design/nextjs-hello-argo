FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files and build the app
COPY . .
RUN npm run build

# Expose port 3000 for Next.js
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
