require 'rails_helper'

RSpec.describe "Users", type: :system do
  let!(:user) { create(:user, email: 'sample@sample.com', password: 'password') }

  describe 'ログイン前' do
    context 'フォームの入力値が正常' do
      it 'ログイン処理が成功する' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: user.email
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'マイページ' # 期待する内容を確認
      end
    end
  end
end

