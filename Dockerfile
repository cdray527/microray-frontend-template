# Use an official Node.js runtime as a parent image
FROM node:20-slim

# Install pnpm globally
RUN npm install -g pnpm

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Copy all necessary files to the container
COPY . .

# Install dependencies with pnpm
RUN pnpm install --frozen-lockfile

# Expose necessary ports
EXPOSE 3001

# Run Turbo's dev command
CMD ["pnpm", "dev"]
