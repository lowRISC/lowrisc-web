.PHONY: all production preview preview-drafts

all: production

production:
	hugo --minify --baseURL 'https://www.lowrisc.org'

preview:
	hugo server

preview-drafts:
	hugo server -D -F
