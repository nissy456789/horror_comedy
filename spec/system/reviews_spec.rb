require 'rails_helper'

RSpec.describe "Reviews", type: :system do
  let!(:movie) { build(:movie, title: 'サンプル映画') } # movieを定義
  let!(:review) { build(:review, body: 'テスト！', movie: movie) } # reviewにmovieを関連付け

  describe 'レビュー投稿成功' do
    context 'フォームの入力値が正常' do
      it 'レビュー投稿成功' do
        visit movie_path(movie)
        fill_in 'body', with: 'テスト１' # シングルクォートで囲む
        click_button '投稿'
        expect(page).to have_content 'テスト' # 期待する内容を確認
      end
    end
  end
end