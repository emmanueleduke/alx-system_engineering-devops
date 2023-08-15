node default {
  # fix limit file at hbton user.

  exec { 'fix_limit_hbton_user':
    command => 'sed -i "/holberton hard/s/5/10000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/',
  }

  # Increase the maximum number of open files allowed for the holberton user

  exec { 'change-os-configuration-for-holberton-user':
    command => 'echo "holberton soft nofile 65535" >> /etc/security/limits.conf',
    path => '/usr/bin/',
    user => 'root',
    group => 'root',
  }
}
