# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# 出力先のログファイルの指定
set :output, 'log/crontab.log'
# ジョブの実行環境の指定
set :environment, :production

# 3時間毎に実行するスケジューリング
every 3.hours do
  runner 'MyModel.some_process'
  rake 'my:rake:task'
  command '/usr/bin/my_great_command'
end

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
