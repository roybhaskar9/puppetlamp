# install apache2 package
package { 'apache2':
  ensure => installed,
}

# ensure apache2 service is running
service { 'apache2':
  ensure => running,
}

# install mysql-server package
package { 'mysql-server':
  ensure => installed,
}

# ensure mysql service is running
service { 'mysql':
  ensure => running,
}

# install php5 package
package { 'php5':
  ensure => installed,
}

# ensure info.php file exists
file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
}
