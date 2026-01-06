# Stage 1: Build
FROM node:22-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Build the application
RUN npm run build

# Stage 2: Production
FROM node:22-alpine AS runner

WORKDIR /app

# Create non-root user
RUN addgroup --system --gid 1001 nodejs \
    && adduser --system --uid 1001 angular

# Copy built artifacts from builder
COPY --from=builder --chown=angular:nodejs /app/dist ./dist
COPY --from=builder --chown=angular:nodejs /app/package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev && npm cache clean --force

USER angular

EXPOSE 4000

ENV NODE_ENV=production
ENV PORT=4000

# Start the SSR server
CMD ["node", "dist/wespeak-frontend/server/server.mjs"]
