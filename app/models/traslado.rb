class Traslado < ApplicationRecord
  belongs_to :user
  belongs_to :empresa
end
