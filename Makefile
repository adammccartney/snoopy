.POSIX:

BUILD_DIR := ./app

k8sclient_build:
	mkdir -p $(BUILD_DIR)
	GOOS=linux CGO_ENABLED=0 go build -o $(BUILD_DIR)/k8sclient cmd/k8sclient/main.go

k8sclient_img:
	# Needs sudo!
	docker build -t k8sclient-test -f deploy/Dockerfile .

.PHONY:
clean:
	rm -rf $(BUILD_DIR)
