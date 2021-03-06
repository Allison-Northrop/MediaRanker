Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users
  resources :works
  get '/:category', to:'works#index', constraints: { category: /(book)|(movie)|(album)/ }, as: "category"
  get '/:category/new', to:'works#new', constraints: { category: /(book)|(movie)|(album)/ }, as: 'new_work_by_category'
  resources :votes #TODO check do I need this??

end

# root GET    /                         welcome#index
# users GET    /users(.:format)          users#index
#      POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
# user GET    /users/:id(.:format)      users#show
#      PATCH  /users/:id(.:format)      users#update
#      PUT    /users/:id(.:format)      users#update
#      DELETE /users/:id(.:format)      users#destroy
# works GET    /works(.:format)          works#index
#      POST   /works(.:format)          works#create
# new_work GET    /works/new(.:format)      works#new
# edit_work GET    /works/:id/edit(.:format) works#edit
# work GET    /works/:id(.:format)      works#show
#      PATCH  /works/:id(.:format)      works#update
#      PUT    /works/:id(.:format)      works#update
#      DELETE /works/:id(.:format)      works#destroy
# category GET    /:category(.:format)      works#index {:category=>/(books)|(movies)|(albums)/}
# votes GET    /votes(.:format)          votes#index
#      POST   /votes(.:format)          votes#create
# new_vote GET    /votes/new(.:format)      votes#new
# edit_vote GET    /votes/:id/edit(.:format) votes#edit
# vote GET    /votes/:id(.:format)      votes#show
#      PATCH  /votes/:id(.:format)      votes#update
#      PUT    /votes/:id(.:format)      votes#update
#      DELETE /votes/:id(.:format)      votes#destroy
