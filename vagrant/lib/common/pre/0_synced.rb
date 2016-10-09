vagrant.vm.provision :file, source: SYNCED + '/ssh/operator', destination: "/tmp/matrix.synced/ssh/operator"
