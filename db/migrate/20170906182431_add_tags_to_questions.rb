class AddTagsToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :tags, :string
  end
end
