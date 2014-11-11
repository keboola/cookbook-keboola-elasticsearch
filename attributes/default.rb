default['rsyslog']['server']                    = true
default['rsyslog']['protocol']                  = 'udp'
default['rsyslog']['port']                      = 514


allocated_memory = "#{(node.memory.total.to_i * 0.6 ).floor / 1024}m"
default['elasticsearch'][:allocated_memory] = allocated_memory
default['elasticsearch'][:action][:auto_create_index] = false
default['elasticsearch'][:index][:mapper][:dynamic]   = false