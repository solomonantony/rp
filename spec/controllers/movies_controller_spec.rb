require 'rails_helper'

RSpec.describe MoviesController do
  describe 'searching Movies' do
    it 'should call the model method that performs search' do
      fake_results = [mock('terminator'), mock('Terminator 2')]
      Movie.shoud_receive(:find_in_tmdb).with('Terminator').and_return(fake_results)
      post :search_tmdb, {:search_terms => 'Terminator'}
    end
    it 'should select the Search Results template for rendering'
    it 'should make the search results available to that template'
  end

end
