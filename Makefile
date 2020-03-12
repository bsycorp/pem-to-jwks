all: compile

clean:
	rm -rf build

compile: clean
	sh -c 'export GOOS=linux; export GOARCH=amd64; go build -v -o build/pem-to-jwks-linux'
	sh -c 'export GOOS=darwin; export GOARCH=amd64; go build -v -o build/pem-to-jwks-darwin'