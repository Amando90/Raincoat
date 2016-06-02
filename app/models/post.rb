class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy

	validates :user_id, presence: true
	validates :image, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", small: "150x150>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/	
end
