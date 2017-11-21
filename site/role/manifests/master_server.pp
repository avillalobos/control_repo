class role::master_server{
  include profile::base
  include profile::agent_nodes
  if $facts['networking.ip'] == '172.18.0.2' or $facts['networking.ip'] == '172.18.0.3' {
    include profile::ssh_server
  }
}
