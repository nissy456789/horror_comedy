require 'rails_helper'

RSpec.describe "Bookmarks", type: :system do
  include LoginMacros
  let!(:movie) { create(:movie, title: 'サンプル映画') }

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
        user = User.create(email: 'runtekun@example.com', password: 'password')
        login(user)
        visit movie_path(movie)
        click_on '観たい！'
        expect(page).to have_content('観たい！')
      end
    end
  end
end
