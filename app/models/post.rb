class Post < ActiveRecord::Base

  validates :body, presence: true
  belongs_to :user

  def format
    self.body.gsub(/[\r]/, '</br>')
  end

end
