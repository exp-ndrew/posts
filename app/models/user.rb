class User < ActiveRecord::Base

  validates :email, presence: true
  validates :password, presence: true
  has_many :posts
  has_secure_password

  def random_color
    colors = ["#d9534f","#f0ad4e","#5bc0de","#5cb85c","#428bca"]
    @color = colors[rand(0..4)]
  end
end
