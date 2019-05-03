class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_lists, array: true, default: []
      t.string :Customer_Name
      t.string :Customer_Phone
      t.string :Special_Instruction
      t.decimal :Total_Price, precision: 5, scale: 2
      t.string :Order_Time
      t.timestamps
    end
  end
end
