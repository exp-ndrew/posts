class Post < ActiveRecord::Base

  validates :body, presence: true
  belongs_to :user

  default_scope {order("created_at desc")}

  def format
    self.body.gsub(/[\r]/, '</br>')
  end

end
