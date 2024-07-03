# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gdal-ruby/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "gdal3"
  gem.version       = Gdal::Ruby::VERSION

  gem.authors       = ["Savater Sebastien", "Zac McCormick"]
  gem.email         = ["github.60k5k@simplelogin.co"]

  gem.description   = "GDAL/OGR bindings for ruby"
  gem.summary       = "GDAL/OGR bindings for ruby. Currently contains native extensions for GDAL 3.x"
  gem.homepage      = "https://github.com/solutions-territoire/gdal-ruby"
  gem.licenses      = ["BSD"]

  gem.files         = `git ls-files`.split($\)
  gem.extensions    = %w[
    ext/gdal-ruby/gdal/extconf.rb
    ext/gdal-ruby/gdalconst/extconf.rb
    ext/gdal-ruby/ogr/extconf.rb
    ext/gdal-ruby/osr/extconf.rb
  ]

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake',          ['>= 0']
  gem.add_development_dependency 'rake-compiler', ['>= 0']
  gem.add_development_dependency 'rspec',         ['>= 0']
end
