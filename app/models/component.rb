class Component < ApplicationRecord
  has_many :offers, dependent: :destroy
end