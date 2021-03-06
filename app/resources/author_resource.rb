class AuthorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :image, :string
  attribute :book_id, :integer

  # Direct associations

  belongs_to :book

  # Indirect associations
end
