# encouding: utf -8

## $: is the shorthand version of $LOAD_PATH.
#  It contains an array of paths that your script
#  will search through when using require.
#
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  ## Basic Information
  #
  s.name     = 'gem_tutorial'
  s.version  = '0.0.1'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version     = '~> 1.9'
  s.required_rubygems_version = '>= 1.3.6'
  s.authors  = ['Nelvin Driz']
  s.email    = ['ndriz@exist.com']
  s.homepage = 'http://nelvindriz.tumblr.com'
  s.licenses = ['MIT']
  s.summary  = 'A Gem Creation Tutorial'
  s.description = %q{
    This is a a gem creation tutorial created to be used for
    the Exist Code Camp
    }

  ## Rdoc Settings
  #  If has_rdoc is set to true, generate docs upon installation
  #
  s.has_rdoc = true
  s.extra_rdoc_files = 'README.rdoc'
  s.rdoc_options = %w{--main README.rdoc}

  ## External Name in RubyForge
  #
  s.rubyforge_project = 'gem_tutorial'

  ## Gem Files
  #
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.bindir      = 'bin'
  ## Define only when there are multiple executables
  # s.default_executable = 'executable'

  ## Extensions
  #  Requires an array of paths towards extconf.rb-style files
  #  These files are usually found under the ext folder
  #  s.extensions *array
  #

  ## Dependencies
  #
  # s.add_dependency 'gem_name', '= 0.0.1'
  # s.add_development_dependency 'rspec'

  ## Messages
  #
  s.requirements = %w{
      Nothing at the moment
    }
  s.post_install_message = %q{
    Thank you for installing this gem tutorial
    }
end

## Tips and Other Information
#
#  Use 'base64' -> 'Base64.encode' && 'Base64.decode' to
#  obfuscate sensitive information
#
#  Extensions are libraries which are usually compiled like
#  some C++ code, which are then consumed by ruby
#  -- http://www.ruby-doc.org/docs/ProgrammingRuby/html/ext_ruby.html
#
#  Build this gem either by issuing:
#  -- gem build gem_tutorial.gemspec
#  -- chmod 755 gem_tutorial.gemspec; ./gem_tutorial.gemspec
#  But preferrably:
#  -- rake gem
#
#  Gem Hosting (http://rubygems.org/)
#  1. Signup to at rubygems (http://rubygems.org/sign_up)
#  2. gem push gem_tutorial-0.0.1.gem
#  * Other Commands:
#    gem owner
#    gem webhook
#    gem yank
#
#  Certificates
#  1. Generate certificates
#     (If the first commadn fails, try the second one)
#     -- gem cert --build ndriz@exist.com
#     -- ruby -rfileutils -S gem cert --build ndriz@exist.com
#  2. Move gem-private_key.pem to a secure place
#  3. Add the following to the gemspec file:
#     ...
#     s.signing_key = '/absolute/path/to/gem-private_key.pem'
#     s.cert_chain  = ['gem-publid_cert.pem']
#     ...
#
#  Gem Directory Structure
#  /gem_tutorial/             # Root Folder
#    /bin/                    # Commandline Scripts
#    /doc/                    # Documentation
#    /lib/                    # Ruby Files
#    /pkg/                    # Packaged Gems
#    /test/                   # Test::Unit Tests
#    /spec/                   # Rspec Tests
#    /features/               # Cucumber Tests
#    /ext/                    # non-Ruby Files
#    /README                  # Overview of Gem
#    /LICENSE                 # License
#    /Rakefile                # Rake Tasks
#    /gem_tutorial.gemspec    # Gem Specifications
#
#  Engine Gem Directory Structure
#  /gem_tutorial/             # Root Folder
#    # Engine Specific
#    /app/                    # Application Folder
#    /config/                 # Configuration Folder
#    /db/                     # Database Folder
#    /log/                    # Log Folder
#    /script/                 # Scripts Folder
#
#    # Gem Specific
#    /bin/                    # Commandline Scripts
#    /doc/                    # Documentation
#    /lib/                    # Ruby Files
#    /pkg/                    # Packaged Gems
#    /test/                   # Test::Unit Tests
#    /spec/                   # Rspec Tests
#    /features/               # Cucumber Tests
#    /ext/                    # non-Ruby Files
#    /README                  # Overview of Gem
#    /LICENSE                 # License
#    /Rakefile                # Rake Tasks
