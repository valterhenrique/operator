vagrant.vm.provision 'shell', path: SYSTEM + '/cleanup',
name: 'post: clean up '

vagrant.vm.provision 'shell', path: SYSTEM + '/info', name:
'post: info '
