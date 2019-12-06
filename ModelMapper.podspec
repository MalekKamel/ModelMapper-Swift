Pod::Spec.new do |s|
  s.name             = 'ModelMapper'
  s.version          = '0.1.0'
  s.summary          = 'Abstraction for model mapping in Swift'
  s.description      = <<-DESC
Abstraction for model mapping in Swift, write a mapper once, use everywhere.
DESC

  s.homepage         = 'https://github.com/ShabanKamell/ModelMapper-Swift'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'ShabanKamell' => 'sh3ban.kamel@gmail.com' }
  s.source           = { :git => 'https://github.com/ShabanKamell/ModelMapper-Swift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ShaAhKa'

  s.swift_version = '5.1.2'
  s.ios.deployment_target = '8.0'
  s.source_files  = "Sources/**/*"
  s.exclude_files  = "Sources/Supporting Files/**/*"
  s.framework  = "Foundation"

end
