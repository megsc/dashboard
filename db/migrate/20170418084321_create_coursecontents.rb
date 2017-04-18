class CreateCoursecontents < ActiveRecord::Migration[5.0]
  def change
    create_table :coursecontents do |t|
      t.integer :course_id
      t.string :content_name
      t.string :content_description

      t.timestamps
    end
  end
end
