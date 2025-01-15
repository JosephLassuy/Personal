FROM oven/bun:1 as builder
WORKDIR /app

# Copy package.json and bun.lockb (if it exists)
COPY package.json .
COPY bun.lockb* .

# Install dependencies
RUN bun install --frozen-lockfile

# Copy the rest of the application
COPY . .

# Build the application
RUN bun run build

# Production image
FROM oven/bun:1-slim
WORKDIR /app

# Copy only the necessary files from builder
COPY --from=builder /app/build build/
COPY --from=builder /app/package.json .

EXPOSE 3000
ENV NODE_ENV=production

CMD ["bun", "build"]