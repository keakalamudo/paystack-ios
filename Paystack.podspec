Pod::Spec.new do |s|
  s.name                           = 'Paystack'
  s.version                        = '3.0.1'
  s.summary                        = 'Paystack is a web-based API helping African Businesses accept payments online.'
  s.description                    = <<-DESC
   Paystack makes it easy for African Businesses to accept Mastercard, Visa and Verve cards from anyone, anywhere in the world.
  DESC

  s.license                        = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage                       = 'https://paystack.com'
  s.authors                        = { 'Ibrahim Lawal' => 'ibrahim@paystack.com', 'Paystack' => 'support@paystack.com' }
  s.source                         = { :git => 'https://github.com/paystackhq/paystack-ios.git', :tag => "v#{s.version}" }
  s.ios.frameworks                 = 'Foundation', 'Security'
  s.ios.weak_frameworks            = 'PassKit', 'AddressBook'
  s.requires_arc                   = true
  s.ios.deployment_target          = '8.0'
  s.default_subspecs               = 'Core'

  s.subspec 'Core' do |ss|
    ss.public_header_files         = 'Paystack/PublicHeaders/*.h', 'Paystack/RSA/*.h'
    ss.ios.public_header_files     = 'Paystack/PublicHeaders/UI/*.h'
    ss.source_files                = 'Paystack/PublicHeaders/*.h', 'Paystack/RSA/*.{h,m}', 'Paystack/*.{h,m}'
    ss.ios.source_files            = 'Paystack/PublicHeaders/UI/*.h', 'Paystack/UI/*.{h,m}', 'Paystack/Fabric/*'
    ss.resources                   = 'Paystack/Resources/**/*'
  end

end
