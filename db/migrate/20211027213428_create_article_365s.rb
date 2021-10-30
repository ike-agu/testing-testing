class CreateArticle365s < ActiveRecord::Migration[6.0]
  def change
    create_table :article_365s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
