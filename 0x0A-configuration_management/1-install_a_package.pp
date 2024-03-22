# Program to install package Puppet-lint

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
