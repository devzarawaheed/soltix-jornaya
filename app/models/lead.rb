class Lead < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "leadid_tcpa_disclosure", "name", "phone_no", "terms_and_policy", "universal_leadid", "updated_at"]
  end
end
