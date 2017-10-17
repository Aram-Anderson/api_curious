class Commit

    attr_reader :days,
                :total,
                :week

    def initialize(attrs = {})
      @days = attrs[:days]
      @total = attrs[:total]
      @week = Time.at(attrs[:week]).strftime('%b %m %Y')
    end

    def self.group_commits_by_date

    end
end
