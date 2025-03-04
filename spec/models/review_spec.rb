require 'rails_helper' #factory_botが使えるようになるため

describe "Review", type: :model do #内容が空では投稿できないことをテスト
  describe 'バリデーションチェック' do
    it '設定したすべてのバリデーションが機能しているか' do
      review = build(:review)
      expect(review).to be_valid
      expect(review.errors).to be_empty
    end
  end  
end