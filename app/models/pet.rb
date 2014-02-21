class Pet < ActiveRecord::Base
  as_enum :species, :cat => 0, :dog => 1, :other => 2
  as_enum :status, :lost => 0, :found => 1

  validates :name, :description, :zip, :species_cd, presence: true
  validates :zip, numericality: { only_integer: true}

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.most_recent
    Pet.order("created_at DESC").limit(3)
  end

  def self.recent_with_image
    Pet.order("created_at DESC").where("avatar_file_name is not null").limit(3)
  end

end
