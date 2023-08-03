# frozen_string_literal: true

Rails.application.routes.draw do
  post '/did/create', to: 'dids#create'
  get '/did/resolve/:did', to: 'dids#resolve'
  post '/did/signature', to: 'dids#signature'
  post '/did/verify', to: 'dids#verify'
end
