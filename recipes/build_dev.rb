# chef_gem 'chef-provisioning-vsphere' do
#   action :install
#   compile_time true
# end

#require 'chef/provisioning/vsphere_driver'


# with_vsphere_driver host: '192.168.1.4',
#   insecure: true,
#   user:     'administrator@vsphere.local',
#   password: '@M4ryR3illy'

# with_machine_options :bootstrap_options => {
#   use_linked_clone: true,
#   num_cpus: 2,
#   memory_mb: 4096,
#   network_name: ["VM Network"],
#   datacenter: 'redding',
#   resource_pool: 'Prod',
#   template_folder: 'Templates',
#   template_name: 'ubuntu1604',
#   customization_spec: {
#     ipsettings: {
#       dnsServerList: ['192.168.1.1']
#     },
#     :domain => 'local'
#   },
#   :ssh => {
#     :user => 'root',
#     :password => 'then0mad',
#     :paranoid => false,
#   }
# }

machine "test22" do
  action :converge
  run_list ['app_jenkins::default']
end
  
