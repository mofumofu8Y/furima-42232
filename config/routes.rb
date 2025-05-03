Rails.application.routes.draw do
  get 'items/index'
  root to: 'items#index'  # トップページが items コントローラーの index アクションになる
  resources :items        # items に関するルーティングも一緒に設定
end