class Slot < ActiveRecord::Base

  belongs_to :park

  scope :valid, lambda{ where(state: true) }

  def is_valid?
    self.state && self.end_time.blank?
  end

  def is_not_valid?
    !is_valid?
  end

end

