# npm

## Project Management

- `npm init` — Initialize a new project (creates package.json)
- `npm init -y` — Initialize a project with default values
- `npm install` — Install all dependencies listed in package.json

## Installing Packages

- `npm install package_name` — Install a package and add it to dependencies
- `npm install -D package_name` — Install a package as a devDependency
- `npm install -g package_name` — Install a package globally
- `npm uninstall package_name` — Uninstall a package

## Scripts and Execution

- `npm start` — Run the "start" script defined in package.json
- `npm test` — Run tests
- `npm run script_name` — Run a custom script
- `npx package_name` — Execute a package without permanent installation

## Maintenance

- `npm update` — Update packages
- `npm audit fix` — Scan and fix security vulnerabilities
- `npm list -g --depth=0` — List globally installed packages
