#encoding: utf-8
module ParksHelper
  def slot_history(slots)
    str = "history:<hr/>"
    slots.each do |slot|
      str << "<p>"
      if slot.is_valid?
        str << 'free time:'
      else
        str << 'holding time:'
      end
      begin_time = slot.begin_time.try(:to_date)
      begin_time = begin_time.strftime('%Y-%m-%d %H:%M') if begin_time.present?
      end_time = slot.end_time.try(:to_date)
      end_time = end_time.strftime('%Y-%m-%d %H:%M') if end_time.present?

      str << "#{begin_time}to#{end_time}</p><hr/>"
    end
    str
  end
end
