Rails.application.config.after_initialize do
  require 'filewatcher'

  Thread.new do
    Filewatcher.new('csv_points/*.csv').watch do |filename, event|
      if(event != :deleted)
        puts "File updated: " + filename
      end
    end
  end

end