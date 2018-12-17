Rails.application.config.after_initialize do
  require 'filewatcher'
  require 'csv'
  require 'score_service'

  Thread.new do
    score_service = ScoreService.new

    Filewatcher.new(Rails.configuration.csv_directories).watch do |filename, event|
      if(event != :deleted)
        puts "File updated: " + filename

        CSV.foreach(filename, :headers => true, :col_sep => ';') do |row|
          data = {
            uid: row['uid'].to_i,
            username: row['username'],
            points: row['points'].to_i,
            date: row['date']
          }

          score_service.add_points data
        end

      end
    end
  end
end