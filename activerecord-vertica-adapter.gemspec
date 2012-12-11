lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'activerecord-vertica-adapter'
  gem.version       = '0.0.1'
  gem.authors       = 'Dmitry Vorotilin'
  gem.email         = 'd.vorotilin@gmail.com'
  gem.description   = 'ActiveRecord adapter for Vertica database'
  gem.summary       = 'Adapter for Vertica with working schema dumper based on pg adapter'
  gem.homepage      = 'http://github.com/evrone/activerecord-vertica-adapter'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'activerecord'
  gem.add_runtime_dependency 'pg'
end
