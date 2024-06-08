class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :universal_leadid
      t.string :name
      t.string :email
      t.string :phone_no
      t.boolean :leadid_tcpa_disclosure
      t.boolean :terms_and_policy

      t.timestamps
    end
  end
end
