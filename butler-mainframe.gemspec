Gem::Specification.new do |s|
  s.name = 'butler-mainframe'
  s.version = '0.1.0'
  s.date = '2015-10-14'
  s.summary = 'A virtual butler to perform tasks on a 3270 emulator'
  s.description = 'This gem provides a virtual butler which can perform your custom tasks on a 3270 emulator. You just have to choose your emulator (atm only one choice) and configure your task.'
  s.homepage = 'https://github.com/marcomd/butler-mainframe'
  s.authors = ['Marco Mastrodonato']
  s.required_ruby_version = '>= 1.8.7'
  s.platform = Gem::Platform::RUBY
  s.email = ['m.mastrodonato@gmail.com']
  s.requirements = "Be awake and rested"
  s.require_paths = ['lib']
  s.files = Dir.glob('lib/**/*') + Dir.glob('test/**/*') + %w(LICENSE README.md CHANGELOG.md Gemfile rakefile)
  s.license = 'LGPL-3.0'
  # s.add_runtime_dependency 'i18n', '~> 0.7'
  # s.add_runtime_dependency 'docile', '~> 1.1'
end