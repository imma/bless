deployment.zip:
	mkdir -p vendor/bless/lambda_configs
	cd vendor/bless && make lambda-deps publish
