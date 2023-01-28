# ----- Common commands -------------------------------------------------------
dev:
	docker-compose -f compose.local.yml up --build --remove-orphans

prod:
	docker-compose -f compose.production.yml up --build --remove-orphans


# ----- AWS local commands ----------------------------------------------------
aws-list-bucket:
	aws --endpoint-url=http://localhost:4566 s3 ls s3://mybucket/

aws-list-pictures:
	aws --endpoint-url http://localhost:4566 s3 ls s3://mybucket/pictures/
