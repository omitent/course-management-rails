class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :contact
      t.string :email
      t.string :department
      t.string :course

      t.timestamps
    end
  end
end
