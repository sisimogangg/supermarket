build:
	docker pull microhq/micro
	sudo docker run -p 8080:8080 \
		-e MICRO_REGISTRY=mdns \
		microhq/micro api \
		--handler=rpc \
		--address=:8080 \
		--namespace=supermarket
