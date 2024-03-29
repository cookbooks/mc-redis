package "redis" do
  action :install
end

template "#{node['redis']['dir']}/redis.conf" do
  source "redis.conf.erb"
end

service "redis" do
  action [:enable, :start]
end