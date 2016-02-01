default['rsyslog']['server']                    = true
default['rsyslog']['protocol']                  = 'udp'
default['rsyslog']['port']                      = 514


allocated_memory = "#{(node.memory.total.to_i * 0.6 ).floor / 1024}m"
default['elasticsearch'][:allocated_memory] = allocated_memory
default['elasticsearch'][:action][:auto_create_index] = false
default['elasticsearch'][:index][:mapper][:dynamic]   = false

default.elasticsearch[:logging]['action'] = 'INFO'
default.elasticsearch[:logging]['com.amazonaws'] = 'WARN'
default.elasticsearch[:logging]['index.search.slowlog'] = 'TRACE, index_search_slow_log_file'
default.elasticsearch[:logging]['index.indexing.slowlog'] = 'TRACE, index_indexing_slow_log_file'
