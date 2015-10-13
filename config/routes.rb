Rails.application.routes.draw do
  resources :campaigns do
    member do
      get 'hack_linkedin'
      get 'hack_domains'
      get 'hack_emails'
    end

    resources :profiles do
      collection do
        delete 'destroy_multiple'
        get 'csv_pipedrive'
        get 'csv_replyapp'
      end
    end
  end

  root 'campaigns#index'
  get  'campaigns/:id/import_websites' => 'profiles#import_websites'
  get  'campaigns/:id/import_emails' => 'emails#import_emails'

  resources :emails
  resources :googles
end
