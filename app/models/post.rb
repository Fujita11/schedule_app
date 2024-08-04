class Post < ApplicationRecord
    validates :content, presence: true, length: { maximum: 20 }
    validates :start_datetime, presence: true
    validates :end_datetime, presence: true
    validates :memo, length: { maximum: 500 } 
    validate :end_datetime_after_start_datetime
    
  
    private
  
    def end_datetime_after_start_datetime
      if end_datetime.present? && start_datetime.present? && end_datetime < start_datetime
        errors.add(:end_datetime, "must be after the start date")
      end
    end
end