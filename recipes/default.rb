
include_recipe 'elasticsearch::default'
logging_template = resources(:template => "logging.yml")
logging_template.cookbook "keboola-elasticsearch"

include_recipe 'rsyslog'
rsyslog_default_template = resources(:template => "/etc/rsyslog.d/50-default.conf")
rsyslog_default_template.cookbook "keboola-elasticsearch"