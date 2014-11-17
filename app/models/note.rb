class Note
  include Mongoid::Document
  field :content, type: String
  field :datetime, type: DateTime
  index({datetime: 1})

  def to_s
    datetime.to_s + ' ' + content
  end
end

