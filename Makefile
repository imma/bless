deployment.zip:
	mkdir vendor/bless/lambda_configs
	cd vendor/lambda && make publish
