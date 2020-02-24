class List < ApplicationRecord
  has_many :tokens, dependent: :destroy
end
