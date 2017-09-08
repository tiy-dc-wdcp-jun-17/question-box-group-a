class RemoveTagsFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :tags, :string
  end
end
