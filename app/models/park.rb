class Park < ActiveRecord::Base

  has_many :slots

  def valid_slots
    slots_all = self.slots.order(:s_id, :begin_time).group_by{|sl| sl.s_id}

    slots = []
    slots_all.each do |k, v|
      p v[0]
      slots << v[0] if v[0].is_valid?
    end

    slots
  end

end