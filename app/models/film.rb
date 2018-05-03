class Film < ActiveRecord::Base
  belongs_to :genre
  validates :title, presence: true
  validates :year, presence: true

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

  def self.average_box_office_sales
    average(:box_office_sales)
  end
end
