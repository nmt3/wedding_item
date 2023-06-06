class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|

      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :relationship #間柄
      t.string :title #肩書き
      t.string :post_code
      t.string :address
      t.string :phone_number
      t.string :mail
      t.string :attendance #出欠席
      t.string :allergy


      t.timestamps
    end
  end
end
