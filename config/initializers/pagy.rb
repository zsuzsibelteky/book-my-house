require 'pagy/extras/items'

Rails.application.config.assets.paths << Pagy.root.join('javascripts')

Pagy::DEFAULT[:items]     = 4
Pagy::DEFAULT[:max_items] = 50
