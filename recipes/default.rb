
include_recipe 'keboola-common'
include_recipe 'elasticsearch::default'
logging_template = resources(:template => "logging.yml")
logging_template.cookbook "keboola-elasticsearch"
