chef_gem 'chef-provisioning-vsphere' do
  action :install
  compile_time true
end

require 'chef/provisioning/vsphere_driver'

with_vsphere_driver host: '192.168.1.4',
  insecure: true,
  user:     'administrator@vsphere.local',
  password: '@M4ryR3illy'

with_machine_options :bootstrap_options => {
  use_linked_clone: true,
  num_cpus: 2,
  memory_mb: 4096,
  network_name: ["VMNetwork"],
  datacenter: 'redding',
  resource_pool: 'Prod',
  template_name: 'path to template',
  customization_spec: {
    ipsettings: {
      dnsServerList: ['1.2.3.31','1.2.3.41']
    },
    :domain => 'local'
  }
  :ssh => {
    :user => 'root',
    :password => 'password',
    :paranoid => false,
  }
}

machine "Jenkins" do
  run_list ['app_jenkins::default']
end
