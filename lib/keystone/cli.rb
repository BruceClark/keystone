require 'keystone'
require 'optparse'

options = {}

optparse = OptionParser.new do |opts|
  opts.banner = "Usage: keystone command [arguments]"

  opts.on( '-h', '--help', 'Display this screen' ) do
    puts opts
    exit 0
  end

  opts.on( '-v', '--version', 'Display the program version' ) do
    puts "keystone #{Keystone::VERSION}"
    exit 0
  end
  
  options[:path] = nil
  opts.on( '-p', '--path PATH', 'Specify a path' ) do |path|
    options[:path] = path
  end
end

optparse.parse!

Keystone::Boot.new(ARGV, options).run
