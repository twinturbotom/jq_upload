class CustUpload < ActiveRecord::Base
  attr_accessible :cust_file_url, :name
  before_create :default_name

  def default_name
  	self.name ||= File.basename(cust_file_url, '.*').titleize if cust_file_url
  end
end
