class CreateDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :datas do |t|
      t.string :area
      t.string :name
      t.string :adress
      t.string :email
      t.string :tel
  end
end
