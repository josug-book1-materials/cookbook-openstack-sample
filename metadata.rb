name             'sample-app'
maintainer       'jedipunkz'
maintainer_email 'tomokazu.hirai@gmail.com'
license          'All rights reserved'
description      'Installs/Configures sample-app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

depends 'python', '>= 1.4.6'
depends 'mysql', '>= 5.5.2'
depends 'database', '>= 2.3.0'
depends 'nginx', '>= 2.7.4'

