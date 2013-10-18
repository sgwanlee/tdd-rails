class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.references :team, index: true
      t.references :competition, index: true

      t.timestamps
    end
  end
end
