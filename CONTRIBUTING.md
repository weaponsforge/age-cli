# Contribution Guidelines

Thank you for your interest in contributing to **age-cli**! Contributions of all kinds are welcome, including bug fixes, documentation improvements, and new features.

> [!NOTE]
> ### Before Submitting
>
> - Check for existing [Issues](https://github.com/weaponsforge/age-cli/issues) and [Pull Requests](https://github.com/weaponsforge/age-cli/pulls) before creating a new one.
> - For **new features**, please open a **Feature Request** first to discuss the proposed functionality.
> - For **bug fixes**, include a clear description of the issue, steps to reproduce it, and how your changes resolve it.

## Getting Started

#### 1. Fork the repository

Fork the repository to your GitHub account.

#### 2. Clone your fork

```sh
git clone https://github.com/yourusername/age-cli.git
```

#### 3. Add the upstream remote

```sh
git remote add upstream https://github.com/weaponsforge/age-cli.git
```

## Making Changes

#### 1. Create a feature branch

```sh
git checkout -b feat/your-feature-name
```

#### 2. Make your changes

Please follow these guidelines:

- Keep scripts portable and POSIX shell-compatible where practical.
- Keep the Docker image minimal.
- Update documentation when introducing or changing functionality.
- Maintain the existing project structure and coding style.

#### 3. Test your changes

Before submitting a pull request, verify that:

- The Docker image builds successfully.
- The `keygen.sh`, `encrypt.sh`, and `decrypt.sh` scripts work as expected.
- Documentation examples remain accurate.

#### 4. Commit your changes

Use clear, descriptive commit messages.

```sh
git add .
git commit -m "Add support for ..."
```

## Keeping Your Fork Up to Date

```sh
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

If the project's default branch changes (for example, to `dev`), use that branch instead.

## Submitting Contributions

1. Push your feature branch.

   ```sh
   git push origin feat/your-feature-name
   ```

2. Open a Pull Request against the repository's default branch.

3. Include:

   - A clear description of your changes.
   - The motivation behind them.
   - Any relevant issue references.

4. Be responsive to review feedback and update your PR as needed.

## Contribution Guidelines

- Keep pull requests focused on a single change or feature.
- Prefer small, easy-to-review PRs over large ones.
- Follow the existing project structure and formatting.
- Ensure all examples and documentation remain accurate.
- Write clear commit messages and PR descriptions.

Thank you for helping improve **age-cli**!
