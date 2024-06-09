class RemoveTermsAndPolicyFromLeads < ActiveRecord::Migration[6.1]
  def change
    remove_column :leads, :terms_and_policy, :boolean
  end
end
