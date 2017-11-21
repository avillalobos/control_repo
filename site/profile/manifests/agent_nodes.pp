class profile::agent_nodes{
  include dockeragent
  include ssh_server
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
}
