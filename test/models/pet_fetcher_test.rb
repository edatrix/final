require 'test_helper'

class PetFetcherTest < ActiveSupport::TestCase

  def test_it_connects_to_API
    fetcher = PetFetcher.connect

    assert_kind_of(Petfinder::Client, fetcher)
  end

  def test_it_returns_shelter_name
    fetcher = PetFetcher.connect
    shelter = fetcher.shelter('CA123')
    assert_equal("Pyles Of Smiles, Inc.", shelter.name)
  end

end
