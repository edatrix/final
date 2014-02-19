class Pet < ActiveRecord::Base
  as_enum :species, :cat => 0, :dog => 1, :other => 2

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
