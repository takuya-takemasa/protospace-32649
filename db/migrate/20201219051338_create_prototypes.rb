class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, foreign_key: true
      #中間テーブルと連結↑
      t.timestamps 
    #prototypesマイグレーションファイル
    end
  end
end
