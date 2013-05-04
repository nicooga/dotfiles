require "shellwords"

def sources_and_destinations
  Dir["rc/*"].inject({}) do |hash, file|
    src = File.expand_path(file)
    dst = File.expand_path("~/.#{File.basename(file)}")
    hash[src] = dst
    hash
  end
end

NO_COL = "\e[1;0m"
RED    = "\e[1;31m"
GREEN  = "\e[1;32m"

def file_compare(src, dst)
  if File.identical?(src, dst)
    "#{GREEN}[Installed]"
  else
    "#{RED}[Not Installed]"
  end
end

desc "list existing dotfiles files"
task :list do
  list = sources_and_destinations.map { |src, dst| [file_compare(src, dst), dst] }
  just = list.map { |_, path| path.length }.max + 1
  list.sort.each { |item| puts("" << NO_COL << item.last.ljust(just) << item.first << NO_COL) }
end

desc "remove old dotfiles files"
task :remove do
  sources_and_destinations.each do |src, dst|
    rm_rf dst
  end
end

desc "link dotfiles files"
task :install do
  sources_and_destinations.each do |src, dst|
    ln_s(src, dst) unless File.exist?(dst)
  end
end

task :default => :list