# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  ensure => 'present',
  source => '/etc/puppetlabs/code/environments/production/files',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
