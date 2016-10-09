# Operator

Automation made with Vagrant, Ruby and Shell script!


## Instructions

### 1. Install Vagrant

Download the latest version of [Vagrant][1].

```
sudo dpkg -i vagrant_1.8.6_x86_64.deb
```

#### Install the following plugins

Install [vagrant-vbguest][4]:

```
vagrant plugin install vagrant-vbguest
```

### 2. Download Virtualbox

Download the latest version of [Virtualbox][2].

```
sudo dpkg -i virtualbox-5.1_5.1.6-110634~Ubuntu~trusty_amd64.deb
```

## 3. Environment

Specify an environment variable called OPERATOR_HOME at your system.
Example for Ubuntu:

```
export OPERATOR_HOME="$HOME/git/valter/operator"
```

## A bit more of

### Vagrant

Every Vagrant development environment requires a box. You can search for [boxes][3].

> Create a forwarded port mapping which allows access to a specific port within the machine from a port on the host machine. In the example below, accessing "localhost:8080" will access port 80 on the guest machine.

```
config.vm.network "forwarded_port", guest: 80, host: 8080
```

> Create a private network, which allows host-only access to the machine using a specific IP.

```
config.vm.network "private_network", ip: "192.168.2.10"
```

> Create a public network, which generally matched to bridged network. Bridged networks make the machine appear as another physical device on your network.

```
config.vm.network "public_network"
```

> Share an additional folder to the guest VM. The first argument is the path on the host to the actual folder. The second argument is the path on the guest to mount the folder. And the optional third argument is a set of non-required options.

```
# config.vm.synced_folder "../data", "/vagrant_data"
```

> Provider-specific configuration so you can fine-tune various backing providers for Vagrant. These expose provider-specific options.
> Example for VirtualBox:

```
 config.vm.provider "virtualbox" do |vb|
   # Display the VirtualBox GUI when booting the machine
   vb.gui = true

   # Customize the amount of memory on the VM:
   vb.memory = "1024"
 end
```

> Enable provisioning with a shell script. Additional provisioners such as Puppet, Chef, Ansible, Salt, and Docker are also available.
> Please see the documentation for more information about their specific syntax and use.

```
config.vm.provision "shell", inline: <<-SHELL
 apt-get update
 apt-get install -y apache2
SHELL
```

> Checking for guest additions in VM...
> The guest additions on this VM do not match the installed version of VirtualBox!
> In most cases this is fine, but in rare cases it can prevent things such as shared folders from working properly.
> If you see shared folder errors, please make sure the guest additions within the virtual machine match the version of VirtualBox you have installed on your host and reload your VM.

```
Guest Additions Version: 4.3.36
VirtualBox Version: 5.1
```

> For vagrant.vbguest, set auto_update to false, if you do NOT want to check the correct additions version when booting this machine

```
config.vbguest.auto_update = false
```

### Security

In order to make your application safer, after forking this project, you must generate another SSH key for your 'operator' user:

```
ssh-keygen -t rsa -b 4096 -C 'operator@deploy'
```

Copy the private and public keys at `vagrant/lib/synced/ssh/operator/`.


License: [GNU General Public Lincense][0]

[0]: https://www.gnu.org/licenses/gpl-3.0.en.html
[1]: https://www.vagrantup.com/downloads.html
[2]: https://www.virtualbox.org/wiki/Downloads
[3]: https://atlas.hashicorp.com/search
[4]: https://github.com/dotless-de/vagrant-vbguest
