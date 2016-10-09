# BASIC SETUP

vagrant.vm.provision 'shell', path: SETUP + '/basic',
name: 'init: setup basic procedure for the new environment'
