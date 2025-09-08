# Pull Request Style Guide

## Pull Request Titles

Pull request titles MUST follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification. This ensures a consistent and readable commit history, which is used for automated changelog generation and versioning.

### Format

The pull request title must be in the following format:

```
<type>[optional scope]: <description>
```

### Types

The following types are allowed:

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests or correcting existing tests
- **chore**: Changes to the build process or auxiliary tools and libraries such as documentation generation
- **ci**: Changes to our CI configuration files and scripts
- **build**: Changes that affect the build system or external dependencies

### Scope

The scope provides additional contextual information and is contained within parenthesis, e.g., `feat(parser): add ability to parse arrays`.

### Breaking Changes

For breaking changes, append a `!` after the type/scope. The breaking change description should be included in the pull request body.

Example: `feat(api)!: send an email to the customer when a product is shipped`

By following these guidelines, we can maintain a high-quality and informative project history.
