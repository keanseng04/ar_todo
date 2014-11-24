require_relative '../../config/application'
require_relative 'task'

class List < ActiveRecord::Base
  has_many :tasks

  def self.list
    Task.all.each do |x|
      # puts x.id.to_s 
        if x.completed == true
          puts "#{x.id}" +") " + "#{x.description}" + "[X]"
        else 
          puts "#{x.id}" + ") " + "#{x.description}" + "[ ]"
        end
      end
  end

  def self.add(sentence)
    Task.create(description: sentence, completed: false)
  end

  def self.delete(item)
    Task.destroy(item)
  end

  def self.complete(item)
    x = Task.find(item)
    x.completed = true
    x.save
  end

end