# fix our stack so that there is not failed requests
exec { 'fix--for-nginx':
    # Modify ULIMIT value
    command  => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
    # Specify the path for the sed command
    path     => '/usr/local/bin/:bin/',
}

# Restart nginx
exec { 'nginx-restart':
    #  Restart nginx service
    command => '/etc/init.d/nginx restart',
    # Specify the path for the init.d script
    path     => '/etc/init.d/',
}
