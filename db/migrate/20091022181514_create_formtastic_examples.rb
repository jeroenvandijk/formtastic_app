class CreateFormtasticExamples < ActiveRecord::Migration
  def self.up
    create_table :formtastic_examples do |t|
      t.date :date_of_birth

      t.timestamps
    end
  end

  def self.down
    drop_table :formtastic_examples
  end
end
