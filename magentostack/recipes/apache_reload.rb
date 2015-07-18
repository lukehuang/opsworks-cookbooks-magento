include_recipe "deploy"
include_recipe "apache2::service"

execute "anki reload apache" do
  command "echo 'Reloading Apache now'"
  action :run
  notifies :reload, "service[apache2]"
end


