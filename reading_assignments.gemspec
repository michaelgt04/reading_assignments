# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reading_assignments/version"

Gem::Specification.new do |spec|
  spec.name          = "reading_assignments"
  spec.version       = ReadingAssignments::VERSION
  spec.authors       = ["Mike Thomson"]
  spec.email         = ["michaelgt04@gmail.com\n"]

  spec.summary       = "Assign Launch Readings"
  spec.description   = "You can use this gem to assign your readings to your mentees. You have multiple different ways to select the reading. It should make your morning a little easier!"
  spec.homepage      = "https://github.com/michaelgt04/reading_assignments"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["reading_assignments"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
