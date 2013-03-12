plugin_name = newrelic-php-plugin
publish_bucket = cloudbees-clickstack
publish_repo = testing
publish_url = s3://$(publish_bucket)/$(publish_repo)/

# Version
lib/newrelic-php.zip = newrelic-php-3.2.5.147.zip

deps = lib lib/newrelic-php.zip
pkg_files = README.md LICENSE lib setup functions

include plugin.mk

base_url = http://cloudbees-clickstack.s3.amazonaws.com/lib
parser_repo = git://github.com/benjaminsavoy/genapp-metadata-parser.git

lib:
	mkdir -p lib

lib/%.zip:
	wget -qO $@ $(base_url)/$($@)
