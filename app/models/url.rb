class Url
  include Mongoid::Document
  validates :url, presence: true

  field :url, type: String
end
