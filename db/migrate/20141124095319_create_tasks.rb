# require_relative '../config'
# require_relative '../../config/application'


class CreateTasks < ActiveRecord::Migration 
  
  def change 
    create_table :tasks do |t|
      t.belongs_to :list
      t.string :description
      t.boolean :completed
    end
  end

end