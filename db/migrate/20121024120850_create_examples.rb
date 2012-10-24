class CreateExamples < ActiveRecord::Migration
  def self.up
    create_table :examples do |t|
      t.string :title
    end
  end

  def self.down
    drop_table :examples
  end
end
