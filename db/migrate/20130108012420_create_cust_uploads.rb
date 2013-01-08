class CreateCustUploads < ActiveRecord::Migration
  def change
    create_table :cust_uploads do |t|
      t.string :name
      t.string :cust_file_url

      t.timestamps
    end
  end
end
