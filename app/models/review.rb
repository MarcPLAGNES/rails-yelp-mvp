class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: {in: 0..5, message: "Mettre un chiffre entre 0 et 5"}, numericality: {only_integer: true, message: "Mettre un entier"}
end
