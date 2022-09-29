class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper 
    COLORS = [ 
        'Black', 
        'White', 
        'Blue'
    ]

    SEX = ['M', 'F']

    validates :name, :birth_date, :description, presence: true 
    validates :color, presence: true, inclusion: { in: COLORS }
    validates :sex, presence: true, inclusion: { in: SEX }

    def age 
        num_years = Date.today.year - self.birth_date.year 
        num_months = Date.today.month - self.birth_date.month 
        num_days = Date.today.day - self.birth_date.day 

        from_time = Time.now - num_years.years - num_months.months - num_days.days 

        time_ago_in_words(from_time)
    end 
end
