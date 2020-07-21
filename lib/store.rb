
class Store < ActiveRecord::Base
  has_many :employees
  before_validation :name_length
  before_validation :zero_revenue

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { :only_integer=>true, :greater_than=>0 }

  private 
    def name_length
      if name.length < 3
        puts "ERROR: Name must have minimum of three chars, aborting"
      end
    end
  private 

  def zero_revenue
    if annual_revenue < 1
      puts "ERROR: Revenue must be positive"
    end
  end

end
