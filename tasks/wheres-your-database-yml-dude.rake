namespace :dude do

  desc "Make sure your database.yml is in place"
  task :wheres_your_database_yml do
    unless File.exists? File.join("config", "database.yml")
      puts "Where's your database.yml, dude?"
      if File.exist? File.join("config", "database.yml.example")
        puts "Dude! I found an example database.yml, so I'll make a copy of it for you."
        cp File.join("config", "database.yml.example"),  File.join("config", "database.yml")
        abort "Make sure it's cromulent to your setup, then rerun the last command."
      else
        abort "I don't know what to tell you, dude. There's no config/database.yml.example. So maybe you should make one of those, and see where that gets you."
      end
    end
  end

end

task :environment => 'dude:wheres_your_database_yml'
