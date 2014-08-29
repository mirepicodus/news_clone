class Link < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user

  def age
    ((Time.now - self.created_at) / 1.hour).round
  end

  def rank
    self.votes / (self.age + 1)
  end

end
