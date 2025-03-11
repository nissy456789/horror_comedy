require 'rails_helper'

RSpec.describe "Bookmarks", type: :system do

  let!(:movie) { create(:movie, title: 'サンプル映画') }
  let!(:user) { create(:user, email: 'aaaaa@sample.com', password: 'password') }

  describe 'bookmark失敗' do
    context 'ログイン前' do
      it 'ブックマーク失敗' do
        visit movie_path(movie)
        click_link 'ブックマークしよう！'
        expect(page).to have_content 'ログイン'
      end
    end
  end

  describe 'bookmark成功' do
    context 'ログイン後' do
      it '観たいボタンを押す' do
        visit new_user_session_path
        fill_in 'メールアドレス', with: user.email
        fill_in 'パスワード', with: user.password
        click_button 'ログイン'
        visit movie_path(movie)
        expect(page).to have_link 'ブックマークしよう'
      end
    end
  end
end
