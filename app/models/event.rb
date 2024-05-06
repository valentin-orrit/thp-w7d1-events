class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :user

  validates :start_date,
  presence: true

  validate :start_date_must_be_in_future

  validates :duration,
  presence: true,
  numericality: {
    only_integer: true,
    greater_than: 0,
    multiple_of: 5
  }

  validates :title,
  presence: true,
  length: {in: 5..140}

  validates :description,
  presence: true,
  length: {in: 20..1000}

  validates :price,
  presence: true,
  numericality: {
    only_integer: true,
    in: 0..1000
  }

  validates :location,
  presence: true


  private

  def start_date_must_be_in_future
    if start_date.present? && start_date <= Date.today
      errors.add(:start_date, "must be in the future")
    end
  end
end
