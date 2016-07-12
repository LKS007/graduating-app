class Task < ActiveRecord::Base
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
end
