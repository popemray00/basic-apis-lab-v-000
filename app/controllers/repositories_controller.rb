class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories?client_id=884ad172428f11b9eca7&client_secret=21feb4ffedaef0e69b72dbe5a8c30b907373704f&q=repo' do |req|
      req.params['full_name']
  end
end
