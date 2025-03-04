require 'rails_helper'

describe "User", type: :model do#新規登録時にメールアドレスが一意であるためのテスト
  describe 'バリデーションチェック' do
    it 'ログインする時にメールアドレスが入力されている。' do
      user = build(:user)
      expect(user).to be_valid
      expect(user.errors).to be_empty
    end
  end
end