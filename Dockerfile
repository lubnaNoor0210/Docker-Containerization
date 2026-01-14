# Use Node.js 22 lightweight image
FROM node:22-alpine

# Set working directory inside container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies inside container
RUN npm install

# Copy rest of the project files
COPY . .

# Build the Next.js project
RUN npm run build

# App runs on port 3000
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
