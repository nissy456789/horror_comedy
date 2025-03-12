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

    context 'フォームの入力値が空の時' do
      it 'ログイン処理が失敗する' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: user.email
        fill_in 'パスワード', with: ''
        click_button 'ログイン'
        expect(page).to have_content 'ログイン'
      end
    end
  end

  describe 'ログイン後' do
    context 'ログアウトする' do
      it 'ログアウトに成功する' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: user.email
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
        click_link 'ログアウト'
        expect(page).to have_link('ログイン', visible: true)
      end
    end

    context 'マイページに遷移する' do
      it 'ユーザー名とメールアドレスが記述されている' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: user.email
        fill_in 'パスワード', with: 'password'
        click_button 'ログイン'
        click_link 'マイページ'
        expect(page).to have_content user.name
        expect(page).to have_content user.email
      end
    end
  end
end

