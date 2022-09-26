Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "items#index"
=======
  devise_for :users
  root to: "items#index"
  

>>>>>>> 7fb8a5cfe1f15168afeaf604a4aa9e563da5723a
end
