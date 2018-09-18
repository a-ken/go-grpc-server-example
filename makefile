.PHONY:	default
default: clean install build
build:
	go build
build-props:
	rm -rf ./protos/*.pb.go
	protoc ./protos/*.proto --go_out=./
install:
	dep ensure
clean:
	go clean