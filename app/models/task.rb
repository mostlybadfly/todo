class Task < ActiveRecord::Base
  validates :title, presence: true

  def self.pending?
    self.where(:done => false).any?
  end
end


