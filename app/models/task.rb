class Task < ActiveRecord::Base
  before_save :end_of_task
  validates :current_user_id, :title, :description, presence: true
  state_machine initial: :new do
    event :assign do
      # validation?!?
      transition new: :assigned
    end

    event :done do
      transition [:rejected, :assigned] => :doing
    end

    event :tested do
      transition [:rejected, :doing] => :testing
    end

    event :accept do
      transition testing: :accepted
    end

    event :reject do
      transition testing: :rejected
    end

    event :arcive do
      transition [:new, :accepted] => :archived
    end
  end
  belongs_to :user, foreign_key: "current_user_id"

  private

  def end_of_task
    if self.end_date.nil?
      self.end_date = Date.today + 7
    end
  end
end
