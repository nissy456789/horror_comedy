require 'rails_helper'

describe Bookmark, type: :model do
  let(:uid) { 12345 } 
  let(:movie) { "Sample Movie" }

  describe 'バリデーションチェック' do
    it 'ブックマークするuidが重複しないか' do
      bookmark = build(:bookmark)
      expect(bookmark).to be_valid
      expect(bookmark.errors).to be_empty
    end
  end
end
