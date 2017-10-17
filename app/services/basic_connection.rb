class BasicConnection

  def make_connection(options_hash = {})
    Faraday.new(url: options_hash[:url]) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers[:Accept] = "application/vnd.github.cloak-preview"
      faraday.headers[:Authentication] = "token TOKEN"
    end
  end
end
