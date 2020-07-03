lib_dir = File.join(File.dirname(__FILE__),'lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

Gem::Specification.new do |s|
  s.name        = 'cm_time_zone'
  s.version     = '0.0.1'
  s.date        = '2020-07-03'
  s.summary     = "TimeZone library"
  s.description = "TimeZone library"
  s.authors     = ["ben"]
  s.email       = 'ben@arc.dev'
  s.files = `git ls-files`.split($/)
  s.homepage    = 'https://github.com/CodementorIO/cm_time_zone'
  s.license       = 'MIT'
  s.required_ruby_version = '>= 2.6'

  s.add_dependency "activesupport", ">= 5.0.7.2"
end