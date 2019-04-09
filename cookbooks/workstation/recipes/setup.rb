package 'tree' do
	action :install
end

#file '/etc/motd' do
#	content "Property of Mateusz
#
 # IPADDRESS: #{node['ipaddress']}
#  HOSTNAME : #{node['hostname']}
#  MEMORY   : #{node['memory']['total']}
#  CPU      : #{node['cpu']['0']['mhz']}
#"
#end
#
template '/etc/motd' do
  source 'motd.erb'
end
