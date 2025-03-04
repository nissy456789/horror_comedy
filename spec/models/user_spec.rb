require 'rails_helper'

describe "User", type: :model do#新規登録時にメールアドレスが一意であるためのテスト
  describe 'バリデーションチェック' do
    it '設定したすべてのバリデーションが機能しているか' do
      user = build(:user)
      expect(user).to be_valid
      expect(user.errors).to be_empty
    end
  end  
end