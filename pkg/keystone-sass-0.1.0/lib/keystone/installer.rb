require 'fileutils'

module Keystone
  class Installer
    def initialize(options)
      @options  = options
    end

    def install
      if keystone_exists?
        puts "Error: Keystone already exists."
      else
        install_keystone
        puts "Keystone successfully installed to #{target_folder}/keystone/"
      end
    end

    private

    def target_folder
      @options[:path] or Dir.pwd
    end

    def keystone_exists?
      File.directory?("#{target_folder}/keystone")
    end

    def install_keystone
      create_directory
      copy_all_files
    end

    def create_directory
      FileUtils.mkdir_p("#{target_folder}/keystone/")
    end

    def copy_all_files
      FileUtils.cp_r(all_files, "#{target_folder}/keystone/")
    end

    def all_files
      Dir["#{css_directory}/*"]
    end

    def css_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
