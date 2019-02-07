# Location of
CICDTESTS_BINARY_NAME=cicd-tests
CICDTESTS_SOURCE_FILE=src/main.go

# build binary command
BUILD_CICDTESTS_BINARY_CMD=go build -o ${CICDTESTS_BINARY_NAME} ${CICDTESTS_SOURCE_FILE}

# Build a linux amd64 binary
container-build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 ${BUILD_CICDTESTS_BINARY_CMD}
