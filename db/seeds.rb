require 'faker'
require_relative '../app/models/list'
require_relative '../app/models/task'

new_list = List.create(name: "My first list") if !(List.first)

for i in 1..10
  sentence = Faker::Lorem.sentence
  Task.create(description: sentence, completed: false)
end


