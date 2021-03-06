# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "etc"
  spec.version       = "0.2.1"
  spec.date          = '2017-02-27'
  spec.authors       = ["Yukihiro Matsumoto"]
  spec.email         = ["matz@ruby-lang.org"]

  spec.summary       = %q{Provides access to information typically stored in UNIX /etc directory.}
  spec.description   = %q{Provides access to information typically stored in UNIX /etc directory.}
  spec.homepage      = "https://github.com/ruby/etc"
  spec.license       = "BSD-2-Clause"

  spec.files         = %w[
    .gitignore
    .travis.yml
    Gemfile
    LICENSE.txt
    README.md
    Rakefile
    bin/console
    bin/setup
    etc.gemspec
    ext/etc/etc.c
    ext/etc/extconf.rb
    ext/etc/mkconstants.rb
    test/etc/test_etc.rb
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = %w{ext/etc/extconf.rb}

  spec.required_ruby_version = ">= 2.5.0dev"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "test-unit"
end
