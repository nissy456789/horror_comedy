require 'rails_helper'

RSpec.describe "Reviews", type: :system do
  include LoginMacros
  let!(:movie) { create(:movie, title: 'サンプル映画') } # movieを定義

  describe 'レビュー投稿成功' do
    context 'フォームの入力値が正常' do
      it 'ログイン後レビュー投稿成功' do
        user = User.create(email: 'runtekun@example.com', password: 'password')
        login(user)
        visit movie_path(movie)
        expect(page).to have_selector('#review-form', visible: true)#フォームが存在するか確認
        fill_in 'review[body]', with: 'テスト' 
        click_button '投稿'
        expect(page).to have_content('テスト')
      end
    end
  end

  describe '自分のレビューがある時' do
    context '削除ボタンを押す' do
      it '削除成功' do
        user = User.create(email: 'runtekun@example.com', password: 'password')
        login(user)
        visit movie_path(movie)
        expect(page).to have_selector('#review-form', visible: true)
        fill_in 'review[body]', with: 'テスト' 
        click_button '投稿'
        click_button '削除'
        expect(page).not_to have_content 'テスト'
      end
    end
  end
end