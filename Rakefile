require "shellwords"

def sources_and_destinations
  Dir["rc/*"].inject({}) do |hash, file|
    src = File.expand_path(file)
    dst = File.expand_path("~/.#{File.basename(file)}")
    hash[src] = dst
    hash
  end
end

desc "list existing dotfiles files"
task :list do
  sources_and_destinations.each do |src, dst|
    puts("Exist: #{ File.file?(dst) ? "Y" : "N" }: #{dst}")
  end
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
