# vi:ft=ruby:
# Stolen from https://coderwall.com/p/j72egw/organise-your-site-cookbooks-with-berkshelf-and-this-trick
source "https://supermarket.chef.io"

def dependencies(path)
  berks = "#{path}/Berksfile.in"
  instance_eval(File.read(berks)) if File.exists?(berks)
end

Dir.glob('./cookbooks/*').each do |path|
  dependencies path
  cookbook File.basename(path), :path => path
end
