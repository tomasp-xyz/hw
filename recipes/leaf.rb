# recipes/leaf.rb
package 'ifupdown2'

# Example configuration
template '/etc/network/interfaces' do
  source 'interfaces.leaf.erb'
  notifies :run, 'execute[ifreload]', :immediately
end

execute 'ifreload' do
  command 'ifreload -a'
  action :nothing
end
