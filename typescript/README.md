# TypeScript Service Template

This is a minimal TypeScript/Node.js HTTP service template for the octo-jules project.

## Structure

- `src/index.ts` - Main application entry point
- `package.json` - NPM package configuration
- `tsconfig.json` - TypeScript compiler configuration
- `Dockerfile` - Multi-stage Docker build configuration

## Features

- Express-based HTTP server
- Health check endpoint
- Multi-stage Docker build for optimized image size
- TypeScript with strict type checking

## Running Locally

```bash
# Install dependencies
npm install

# Run in development mode (with ts-node)
npm run dev

# Build TypeScript
npm run build

# Run built JavaScript
npm start
```

## Building Docker Image

```bash
docker build -t octo-jules-typescript .
docker run -p 8080:8080 octo-jules-typescript
```

## Adding Dependencies

```bash
# Production dependency
npm install package-name

# Development dependency
npm install --save-dev @types/package-name
```

## Extending

- Add new routes in `src/index.ts`
- Create new TypeScript files in `src/` directory
- Update `package.json` when adding dependencies
- Keep the Dockerfile updated if changing the build process
