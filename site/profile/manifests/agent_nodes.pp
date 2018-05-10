class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'we.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  }
