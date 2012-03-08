# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "keystone-sass"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Imulus"]
  s.date = "2012-03-08"
  s.description = "A library of Sass mixins."
  s.email = "developer@imulus.com"
  s.executables = ["keystone"]
  s.extra_rdoc_files = ["README.md", "bin/keystone", "lib/keystone.rb", "lib/keystone/boot.rb", "lib/keystone/cli.rb", "lib/keystone/compiler.rb", "lib/keystone/installer.rb"]
  s.files = ["README.md", "Rakefile", "app/assets/stylesheets/_keystone.scss", "app/assets/stylesheets/keystone/_css3.scss", "app/assets/stylesheets/keystone/_scaffolding.scss", "app/assets/stylesheets/keystone/_typography.scss", "app/assets/stylesheets/keystone/_utilities.scss", "app/assets/stylesheets/keystone/css3/_background-clip.scss", "app/assets/stylesheets/keystone/css3/_border-radius.scss", "app/assets/stylesheets/keystone/css3/_box-shadow.scss", "app/assets/stylesheets/keystone/css3/_box-sizing.scss", "app/assets/stylesheets/keystone/css3/_opacity.scss", "app/assets/stylesheets/keystone/css3/_transition.scss", "app/assets/stylesheets/keystone/scaffolding/_grid.scss", "app/assets/stylesheets/keystone/scaffolding/_reset.scss", "app/assets/stylesheets/keystone/scaffolding/_structure.scss", "app/assets/stylesheets/keystone/typography/_links.scss", "app/assets/stylesheets/keystone/typography/_lists.scss", "app/assets/stylesheets/keystone/typography/_replacement.scss", "app/assets/stylesheets/keystone/utilities/_alignment.scss", "app/assets/stylesheets/keystone/utilities/_autoclear.scss", "app/assets/stylesheets/keystone/utilities/_hoverbox.scss", "bin/keystone", "keystone.gemspec", "lib/keystone.rb", "lib/keystone/boot.rb", "lib/keystone/cli.rb", "lib/keystone/compiler.rb", "lib/keystone/installer.rb", "Manifest", "keystone-sass.gemspec"]
  s.homepage = "http://github.com/imulus/keystone"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Keystone-sass", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "keystone-sass"
  s.rubygems_version = "1.8.17"
  s.summary = "Keystone provides a simple library of commonly used design patterns in the form of Sass mixins."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
