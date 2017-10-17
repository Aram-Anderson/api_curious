class DashboardController < ApplicationController
  def index
    @repos = GithubSearchService.new(current_user).find_repos
    # @commits = GithubSearchService.new(current_user).find_commits(@repos).flatten
  end
end
