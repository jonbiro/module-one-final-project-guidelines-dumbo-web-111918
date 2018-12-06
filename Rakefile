require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
# thompson = User.find_by(name: "Thompson")
  Pry.start

end
#
# prompt = TTY::Prompt.new
# choices = %w(Scorpion Kano Jax)
#
# answer = prompt.select("Choose your destiny?", choices, marker: "\u{154A9}")
# # prompt.ask("What is your name?")
#
# puts "Your answer is #{answer}. Nice."
