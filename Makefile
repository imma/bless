deployment.zip:
	cd vendor/bless && make lambda-deps
	mkdir -p vendor/bless/lambda_configs
	rsync -ia etc/bless_deploy.cfg etc/ca_key_name.pem vendor/bless/lambda_configs/
	cd vendor/bless && make publish
	cp vendor/bless/publish/bless_lambda.zip deployment.zip.1
	mv deployment.zip.1 deployment.zip
