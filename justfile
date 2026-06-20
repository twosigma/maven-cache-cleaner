# `just --list --unsorted`
[group('default')]
default:
    @just --list --unsorted

ci := env("CI", "")
_ci := if ci != "" { ":ci" } else { "" }

# `npm install` or `npm ci`
[group('setup')]
install:
    {{ if ci != "" { "npm ci" } else { "npm install --legacy-peer-deps" } }}

# Run ESLint
eslint: install
    npm run lint

# Run Prettier formatter
prettier: install
    npm run format-check

# Type-check the project
typecheck: install
    npm run build

# Package the action
package: install
    npm run package

# Run all pre-commit checks
precommit: eslint prettier typecheck package
    @echo "All pre-commit checks passed!"
