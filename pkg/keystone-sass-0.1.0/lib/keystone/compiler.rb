module Keystone
  class Compiler
    def compile
      sub_directories_of(keystone_directory).each do |directory|
        create_manifest(directory, get_partials_from(directory))
      end
    end

    private

    # TODO - Add toggle to allow any directory to be compiled, i.e. keystone compile -p my_keystone_install
    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def keystone_directory
      File.join(stylesheets_directory, "keystone")
    end

    def sub_directories_of parent_directory
      Dir.entries(parent_directory).select do |entry|
        File.directory? File.join(keystone_directory,entry) and !(entry == '.' || entry == '..')
      end
    end

    def get_partials_from directory
      # TODO - Confirm file is a partial by presence of an underscore
      Dir.entries(File.join(keystone_directory,directory)).select do |entry|
        File.file? File.join(keystone_directory,directory,entry) and File.extname(entry) == ".scss"
      end
    end

    # TODO - Clean this up
    def create_manifest directory, partials
      File.open("#{keystone_directory}/_#{directory}.scss", 'w') do |output_file|
        puts "\nCreating _#{directory}.scss"
        partials.each do |partial|
          puts "+ #{partial}"
          partial = partial.sub('.scss', '').sub('_', '')
          output_file.write("@import \"#{directory}/#{partial}\";\n")
        end
      end

      files = Dir.entries(keystone_directory).select { |entry| File.file? File.join(keystone_directory,entry) }

      File.open("#{stylesheets_directory}/_keystone.scss", 'w') do |output_file|
        files.each do |file|
          if File.extname(file) == ".scss"
            file = file.sub(/.scss/, '').sub(/_/, '')
            output_file.write("@import \"keystone/#{file}\";\n")
          end
        end
      end
    end
  end
end
