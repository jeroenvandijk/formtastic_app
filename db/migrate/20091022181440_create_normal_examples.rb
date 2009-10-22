class CreateNormalExamples < ActiveRecord::Migration
  def self.up
    create_table :normal_examples do |t|
      t.date :date_of_birth

      t.timestamps
    end
  end

  def self.down
    drop_table :normal_examples
  end
end
