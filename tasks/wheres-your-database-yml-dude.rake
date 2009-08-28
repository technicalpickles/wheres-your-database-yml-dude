file "config/database.yml.example" do
  abort "I don't know what to tell you, dude. There's no config/database.yml.example. So maybe you should make one of those, and see where that gets you."
end

file "config/database.yml" => "config/database.yml.example" do
  puts "Dude! I found an example database.yml, so I'll make a copy of it for you."
  cp File.join("config", "database.yml.example"),  File.join("config", "database.yml")
  abort "Make sure it's cromulent to your setup, then rerun the last command."
end

task :environment => "config/database.yml"
