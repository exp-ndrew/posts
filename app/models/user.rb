class User < ActiveRecord::Base

  validates :email, presence: true
  validates :password, presence: true
  has_many :posts
  has_secure_password

  def random_color
    colors = ["#d9534f","#f0ad4e","#5bc0de","#5cb85c","#428bca"]
    @color = colors[rand(0..4)]
  end

  def email_format_short
    self.email[0..5] + ".."
  end

   def email_format_long

    if self.email.length > 15
      self.email[0..17] + ".."
    else
      self.email[0..17]
    end
  end

  def email_name
    if self["@"]
      self.email.slice(0..(self.email.index('@') - 1))
    else
      self.email
    end
  end
end
