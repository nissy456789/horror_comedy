require 'rails_helper'

RSpec.describe "Movies", type: :system do
    let!(:movie) { create(:movie, title: 'サンプル映画') }

  describe '映画の情報が存在する時' do
    context '正しく画面遷移すること' do
      it 'トップページから作品一覧画面へ' do
        visit root_path
        click_button 'さぁ！まだ観ぬ世界へ！！'
        expect(page).to have_content('作品一覧')
      end

      it '作品詳細画面から作品一覧画面へ' do
        visit movie_path(movie)
        click_on '作品一覧'
        expect(page).to have_content('作品一覧')
      end
    end
  end
end
