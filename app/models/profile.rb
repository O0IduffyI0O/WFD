class Profile < ActiveRecord::Base
  belongs_to :user
  has_one_attached :avatar
                    # the following are paperclip specific, need updating for activestorage
                    # :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    # :default_url => "/images/:style/missing.png"
  # validates_acceptance_of :avatar, :content_type => /\Aimage\/.*\Z/
end