Rails.application.routes.draw do
  resources :campaigns
  resources :emails
  resources :googles
  #resources :profiles

  resources :campaigns do
    resources :profiles
  end

  root 'campaigns#index'
  #get  'campaigns/:id/profiles' => 'profiles#index_campaigns'
  #get  'campaigns/:idcampaign/profiles/:id/edit' => 'profiles#edit_from_campaign'

  get  'campaigns/:id/hack_linkedin' => 'campaigns#hack_linkedin'
  get  'campaigns/:id/hack_domains' => 'campaigns#hack_domains'
  get  'campaigns/:id/hack_emails' => 'campaigns#hack_emails'
  get  'campaigns/:id/import_websites' => 'profiles#import_websites'
  get  'campaigns/:id/import_emails' => 'emails#import_emails'
end
