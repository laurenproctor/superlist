class AddContentHtmlToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :content_html, :string
    add_column :tasks, :text, :string
  end
end
