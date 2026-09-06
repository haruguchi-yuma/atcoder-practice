require 'json'
require 'net/http'
require 'uri'

from = (Time.now - 24 * 3600).to_i   # 24時間前から

subs = JSON.parse(Net::HTTP.get(
  URI("https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=haruguchi&from_second=#{from}"),
  'User-Agent' => 'haruguchi-practice-script'
))

puts "取得: #{subs.size}件"
subs.sort_by { |s| s['epoch_second'] }.each do |s|
  puts "#{Time.at(s['epoch_second']).strftime('%H:%M:%S')} #{s['problem_id']} #{s['result']} #{s['execution_time']}ms"
end
