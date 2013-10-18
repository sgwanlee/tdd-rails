class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.references :competition, index: true

      t.timestamps
    end
  end
end
