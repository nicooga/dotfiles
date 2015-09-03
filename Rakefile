require 'bundler'
Bundler.require

def config_files
  Dir.glob('./config/**/*').map &File.method(:expand_path)
end

def dotted_dest_file(file)
  File.join ENV['HOME'], File.basename(file).prepend('.')
end

def print_status
  config_files.each do |file|
    dest_file      = dotted_dest_file(file)
    file_exists    = File.exists?(dest_file)
    color, message = file_exists ? [:green, 'COPIED'] : [:red, 'NOT COPIED']

    puts "#{Term::ANSIColor.send(color, message)} #{file}"
  end
end

task :install do
  config_files.each do |file|
    dest_file = dotted_dest_file(file)

    next if File.symlink?(dest_file)

    if File.exists?(dest_file)
      File.rename dest_file, dest_file + '.bu'
    end

    File.symlink file, dest_file
  end

  print_status
end

task :uninstall do
  config_files.each do |file|
    dest_file   = dotted_dest_file(file)
    backup_file = dest_file + '.bu'
    next unless File.symlink?(dest_file)

    File.delete(dest_file)

    if File.exists?(backup_file)
      File.rename backup_file, dest_file
    end
  end

  print_status
end

task(:status) { print_status }
task default: :status 
