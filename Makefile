all: deploy submit history

deploy:
	tapis apps deploy -W ./

#job:
#	tapis jobs init --no-notify --no-archive --output vinajob.json vina-0.0.1

submit:
	tapis jobs submit -F vinajob.json

history:
	tapis jobs history ${JOB}