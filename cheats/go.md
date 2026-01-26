# go

## Basic Commands

- `go run main.go` — Compile and run a program
- `go build` — Compile the current package (generates an executable)
- `go install` — Compile and install the binary in $GOPATH/bin
- `go clean` — Remove object files and cached temporary files

## Modules and Dependencies

- `go mod init module_name` — Initialize a new module
- `go mod tidy` — Add missing modules and remove unused ones
- `go mod vendor` — Create a local copy of dependencies (vendor folder)
- `go get package_url` — Download and install a package/module

## Tests and Debugging

- `go test ./...` — Run all tests in the project recursively
- `go test -v` — Run tests in verbose mode
- `go fmt` — Format source code according to Go standards
- `go vet` — Report likely mistakes in packages
- `go doc fmt.Println` — Show documentation for a function
