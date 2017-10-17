class GithubSearchService

  def initialize(current_user)
    @current_user = current_user
  end

  def find_repos
    loop_objects(Repo)
  end

  def loop_objects(object)
    results = clean_results_repos
    results.map do |result|
      object.new(result)
    end
  end

  def find_commits(repos)
    commits = []
    repos.each do |repo|
      unless clean_results_commits(repo.name).nil?
        commits << clean_results_commits(repo.name).flat_map { |comm| Commit.new(comm) unless comm.empty? }
      end
    end
    commits.flatten
  end

  def clean_results_commits(name)
    commits_response = get_repo_commit_results(name).body
    unless commits_response.empty?
      JSON.parse(commits_response, symbolize_names: true).delete_if {|commit| commit[:total] == 0}
    end
  end

  def get_repo_commit_results(name)
    conn.get("https://api.github.com/repos/#{current_user.username}/#{name}/stats/commit_activity?access_token=#{current_user.token}")
  end

  def get_repo_search_results
    conn.get("/users/#{current_user.username}/repos?access_token=#{current_user.token}")
  end

  def clean_results_repos
    repo_response = get_repo_search_results.body
    JSON.parse(repo_response, symbolize_names: true)
  end

  private

  def conn
    @conn ||= BasicConnection.new.make_connection(options={url: 'https://api.github.com'})
  end
  attr_reader :current_user

end
