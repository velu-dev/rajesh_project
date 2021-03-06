Rails.application.routes.draw do
  get "students/assignment"
  get "students/exam"
  get "students/events"
  get "students/attandance"
  get "students/circular"
  resources :circulars
  resources :events
  get "dashboard/student"
  get "dashboard/admin"
  get "dashboard/staff"
  get "select_class", to: "attendances#show_class"
  get "take_attendance", to: "attendances#take_attendance"
  resources :marks
  resources :subjects
  resources :exams
  resources :assignments
  resources :attendances
  resources :class_details
  get "sessions/login"
  get "sessions/logout"
  get "sessions/home"
  post "sessions/login_attempt"
  resources :users
  resources :roles
  root "sessions#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
