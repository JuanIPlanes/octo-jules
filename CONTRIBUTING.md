# Contributing to octo-jules

Thank you for your interest in contributing to octo-jules! This document provides guidelines for contributing to this project.

## Code of Conduct

- Be respectful and inclusive
- Welcome newcomers and help them learn
- Focus on constructive feedback
- Respect different viewpoints and experiences

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:
- A clear description of the bug
- Steps to reproduce
- Expected vs actual behavior
- Your environment (OS, Docker version, etc.)

### Suggesting Features

Feature suggestions are welcome! Please create an issue with:
- A clear description of the feature
- Use cases and benefits
- Any implementation ideas you have

### Submitting Changes

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/your-feature-name`
3. **Make your changes**: 
   - Follow the existing code style
   - Keep changes focused and minimal
   - Test your changes thoroughly
4. **Commit your changes**: Use clear, descriptive commit messages
5. **Push to your fork**: `git push origin feature/your-feature-name`
6. **Create a Pull Request**: Describe your changes and link any related issues

### Code Style Guidelines

#### Golang
- Follow standard Go conventions
- Use `gofmt` to format code
- Add comments for exported functions
- Keep functions small and focused

#### Java
- Follow Java naming conventions
- Use meaningful variable names
- Add Javadoc comments for public methods
- Keep classes focused on single responsibility

#### TypeScript
- Use TypeScript strict mode
- Add type annotations where helpful
- Follow ESLint recommendations (if configured)
- Use meaningful variable names

### Docker Guidelines

- Keep Docker images small
- Use multi-stage builds
- Minimize layers
- Don't include unnecessary files
- Use specific version tags

### Documentation

- Update README.md if you change functionality
- Add comments for complex logic
- Update language-specific READMEs if needed
- Keep documentation clear and concise

## Development Workflow

1. **Pull latest changes**: `git pull origin main`
2. **Create a branch**: `git checkout -b feature/my-feature`
3. **Make changes**: Edit code, test locally
4. **Test Docker builds**: 
   ```bash
   docker-compose build
   docker-compose up
   ```
5. **Commit**: `git commit -m "Clear description of changes"`
6. **Push**: `git push origin feature/my-feature`
7. **Create PR**: Submit pull request on GitHub

## Testing

Before submitting a PR:

1. Build all Docker images successfully
2. Test each service runs without errors
3. Verify health check endpoints work
4. Test any new features you added
5. Ensure existing functionality still works

## License

By contributing, you agree that your contributions will be licensed under the Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0).

## Questions?

If you have questions, feel free to:
- Open an issue for discussion
- Reach out to the project maintainer

Thank you for contributing! 🎉
