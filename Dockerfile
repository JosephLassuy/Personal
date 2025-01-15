FROM oven/bun:1 as builder
WORKDIR /app

# Copy package files
COPY package.json .

# Install dependencies (this will generate bun.lockb)
RUN bun install

# Copy source code
COPY . .

# Build the application
RUN bun run build

# Production stage
FROM oven/bun:1-slim
WORKDIR /app

# Copy built assets from builder
COPY --from=builder /app/build build/
COPY --from=builder /app/package.json .

EXPOSE 3000
CMD ["bun", "start"]