name             'kdeploy'
maintainer       'Roderik van der Veer'
maintainer_email 'roderik@vanderveer.be'
license          'Apache 2.0'
description      'Installs/Configures kdeploy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends "apt"
depends "apache2"
depends "git"
depends "php"
depends "composer"
depends "symfony2"
depends "mysql"
depends "java"
