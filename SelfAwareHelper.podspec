Pod::Spec.new do |spec|

  spec.name         = "SelfAwareHelper"
  spec.version      = "0.0.1"
  spec.summary      = "A Helper to make classes perform actions automatically on app start"
  spec.homepage     = "https://github.com/omiz/SelfAwareHelper"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Omar Allaham" => "o.allaham@icloud.com" }

  spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/omiz/SelfAwareHelper.git", :tag => "#{spec.version}" }

  spec.source_files  = "SelfAwareHelper/*.{swift,m}"

  spec.swift_versions = [5.1, 5.2]

end
