FROM node:18

WORKDIR /app

# Install only production dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code
COPY . ./

# Expose backend port
EXPOSE 5000

# Run backend server
CMD ["node", "server.js"]
