# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  sales_rep_id :integer
#  name         :string(255)
#  line1        :string(255)
#  line2        :string(255)
#  city         :string(255)
#  state        :string(255)
#  zip          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_locations_on_sales_rep_id  (sales_rep_id)
#

class Location < ActiveRecord::Base
  belongs_to :sales_rep

  def to_s
    "#{name} #{city}, #{state}"
  end
end
