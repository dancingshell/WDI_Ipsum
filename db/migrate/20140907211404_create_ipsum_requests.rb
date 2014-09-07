class CreateIpsumRequests < ActiveRecord::Migration
  def change
    create_table :ipsum_requests do |t|
      t.integer :paragraphs

      t.timestamps
    end
  end
end
