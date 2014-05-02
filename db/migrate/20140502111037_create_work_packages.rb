class CreateWorkPackages < ActiveRecord::Migration
  def change
    create_table :work_packages do |t|

      t.timestamps
    end
  end
end
