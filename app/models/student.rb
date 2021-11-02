class Student < ApplicationRecord

  scope :by_name, ->(dicksquibbles) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }

  def to_s
    "#{first_name} #{last_name}"
  end

end
