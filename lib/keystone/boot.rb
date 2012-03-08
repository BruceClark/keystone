module Keystone
  class Boot
    def initialize(commands, options)
      @commands = commands
      @options  = options
    end

    def run
      case @commands[0]
      when "install"
        Keystone::Installer.new(@options).install
      when "compile"
        Keystone::Compiler.new.compile
      end
    end
  end
end
