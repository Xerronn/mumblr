class AddFlagtoArticle < ActiveRecord::Migration[5.2]
  def change
      change_table :articles do |t|
        t.integer :flag, :default => 0
      end
  end
end
