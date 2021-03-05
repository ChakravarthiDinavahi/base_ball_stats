require 'pagy/extras/array'
require 'pagy/extras/metadata'

Rails.application.config.assets.paths << Pagy.root.join('javascripts')
Pagy::VARS[:items] = 50
