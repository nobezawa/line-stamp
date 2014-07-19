class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_images
  accepts_nested_attributes_for :project_images
end
