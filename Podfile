source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'Idee App' do
  
end

target 'Alumni ID' do
  pod 'Kingfisher', '~> 5.0'
end


post_install do |installer|
  
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['0'] = ""
        config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
        config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        config.build_settings['SWIFT_VERSION'] = '4.2'
        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'NO'
        config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
        
      end
    end
  end
