# config/routes.rb
Rails.application.routes.draw do
  devise_for :users  # ユーザー認証に関するルーティング

  # トップページの設定
  root to: 'items#index'  # トップページが items コントローラーの index アクションになる

  # 商品に関するルーティング
  resources :items, only: [:new, :create]  # 新規作成、保存のルートを追加
end