Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :hostonly, "192.168.33.10"
  config.vm.share_folder "v-root", "/vagrant", ".", :nfs => true

  config.vm.provision :puppet, :module_path => "private/puppet/modules" do |puppet|
    puppet.manifests_path = "private/puppet/manifests"
    puppet.manifest_file  = "site.pp"
  end
end
