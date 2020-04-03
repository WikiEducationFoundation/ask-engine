class CreateAskQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :ask_questions do |t|
      t.timestamps
      t.string :title, null: false
      t.text :content
      t.integer :user_id
      t.integer :page_views, default: 0
    end
  end
end
