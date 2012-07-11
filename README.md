# Base vagrant php project

This repo aims to be a quick way to get started with a PHP project and Vagrant.

To get started:

 1. Clone this repo:

     `git clone git://github.com/davidwinter/base-vagrant-php.git your-project-name`

 2. Edit `site.pp` and update the `server_name` property to a local testing host that you'll use.
 3. Update `/etc/hosts` to point `192.168.33.10` to the host you added in `site.pp` in the `server_name` property.
 4. Run `vagrant up`.
 5. Visit [http://dev.example.com](http://dev.example.com) (or the host that you set) and you should see the `phpinfo()` screen.
 6. Away you go!

Please do submit any issues with feedback/suggestions. And I welcome pull requests.