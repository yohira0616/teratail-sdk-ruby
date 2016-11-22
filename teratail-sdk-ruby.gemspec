# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teratail/version'

Gem::Specification.new do |spec|
  spec.name          = "teratail-sdk-ruby"
  spec.version       = TeratailSdkRuby::VERSION
  spec.authors       = ["yohira0616"]
  spec.email         = ["yukito.sys.so@gmail.com"]

  spec.summary       = %q{Programming Q&A Web Service Teratail(https://teratail.com/) SDK for ruby}
  spec.description   = %q{Programming Q&A Web Service Teratail(https://teratail.com/) SDK for ruby}
  spec.homepage      = "https://github.com/yohira0616/teratail-sdk-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
    # raise "RubyGems 2.0 or newer is required to protect against " \
      #public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop","~> 0.45.0"
  spec.add_runtime_dependency "rest-client", "~> 2.0.0"
end
