class CreateProxyImages < ActiveRecord::Migration
  def change
    create_table :proxy_images do |t|
      t.binary :content
      t.integer :user_id

      t.timestamps
    end
  end
end
