plugin_name = newrelic-php-plugin
publish_bucket = cloudbees-clickstack
publish_repo = testing
publish_url = s3://$(publish_bucket)/$(publish_repo)/

deps = lib/newrelic-php-3.2.5.143.zip
pkg_files = README.md LICENSE setup functions lib

include plugin.mk

base_url = http://cloudbees-clickstack.s3.amazonaws.com

lib/%.zip:
	mkdir -p lib
	wget -qO $@ $(base_url)/$@
