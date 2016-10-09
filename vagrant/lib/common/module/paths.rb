require 'yaml'
SETTINGS = YAML.load_file(ENV['OPERATOR_HOME'] + '/vagrant/server/settings.yml')

module CommonPaths

    # LIB
    COMMON = ENV['OPERATOR_HOME']+"/vagrant/lib/common"
    INSTALL = ENV['OPERATOR_HOME']+"/vagrant/lib/install"
    SETUP = ENV['OPERATOR_HOME']+"/vagrant/lib/setup"
    SYNCED = ENV['OPERATOR_HOME']+"/vagrant/lib/synced"
    SYSTEM = ENV['OPERATOR_HOME']+"/vagrant/lib/system"

    # SERVERS
    JENKINS = ENV['OPERATOR_HOME']+"/vagrant/server/jenkins"
end
