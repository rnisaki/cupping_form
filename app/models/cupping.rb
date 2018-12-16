class Cupping < ApplicationRecord
belongs_to :country, optional: true

validates :origin,  length: { maximum: 100 }
validates :process, length: { maximum: 100 }
validates :shop,    length: { maximum: 100 }
validates :memo,    length: { maximum: 420 }
validates :flavor_coment, length: { maximum: 420 }
end
