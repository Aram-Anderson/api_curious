class Repo

  attr_reader :name,
              :url,
              :language,
              :size,
              :created_at,
              :updated_at

  def initialize(attrs = {})
    @name = attrs[:name]
    @url = attrs[:html_url]
    @language = attrs[:language]
    @size = attrs[:size]
    @created_at = attrs[:created_at]
    @updated_at = attrs[:updated_at]
  end
end
