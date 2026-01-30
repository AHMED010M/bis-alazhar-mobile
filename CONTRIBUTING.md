# Contributing to BIS Alazhar Mobile App

Thank you for considering contributing to the BIS Alazhar Mobile Application! 🎉

## How to Contribute

### Reporting Bugs

1. Check if the bug has already been reported in Issues
2. If not, create a new issue with:
   - Clear title and description
   - Steps to reproduce
   - Expected vs actual behavior
   - Screenshots (if applicable)
   - Device and Flutter version info

### Suggesting Features

1. Open an issue with the `enhancement` label
2. Clearly describe:
   - The problem your feature would solve
   - How it should work
   - Why it would benefit users

### Pull Requests

1. Fork the repository
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Make your changes following our code style
4. Test thoroughly
5. Commit with clear messages:
   ```bash
   git commit -m "Add: Brief description of changes"
   ```
6. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
7. Open a Pull Request

## Code Style Guidelines

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Format code with `flutter format`

## Project Structure

```
lib/
├── core/           # Core functionality (API, constants, utils)
├── features/       # Feature modules
│   ├── auth/
│   ├── home/
│   ├── study/
│   ├── notes/
│   ├── forum/
│   ├── profile/
│   └── notifications/
└── shared/        # Shared widgets and models
```

## Testing

- Add tests for new features
- Ensure all tests pass before submitting PR:
  ```bash
  flutter test
  ```

## Questions?

Feel free to open an issue for any questions or clarifications.

Thank you for contributing! 🚀
