generate:
	go generate ./...

lint:
	golint -set_exit_status ./...

test: generate lint
	go test -cover ./...
	go run ./cmd/tengo -resolve ./testdata/cli/test.tengo

fmt:
	go fmt ./...

repl:
	go run ./cmd/tengo
