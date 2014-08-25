Spree::Wombat::Config.configure do |config|

  config.mechanism = 'RabbitMq'
  config.queue_prefix = 'ProjectJ::'
  config.connection_token = 'YOUR TOKEN'
  config.connection_id = 'YOUR CONNECTION ID'
  config.push_objects = %w(Spree::Order Spree::Product Spree::Variant Spree::Address)
  config.payload_builder = {
    'Spree::Order' => {:serializer => 'Spree::Wombat::OrderSerializer', :root => 'orders'},
    'Spree::Product' => {:serializer => 'Spree::Wombat::ProductSerializer', :root => 'products'},
    'Spree::Variant' => {:serializer => 'Spree::Wombat::VariantSerializer', :root => 'variants'},
    'Spree::Address' => {:serializer => 'Spree::Wombat::AddressSerializer', :root => 'addresses'},
  }
end
