source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'Idee App' do
  
end

target 'Alumni ID' do
  pod 'Kingfisher', '~> 5.0'
end


post_install do |installer|
  
  project_path = 'Idee App.xcodeproj'
  project = Xcodeproj::Project.open(project_path)
  project.targets.each do |target|
      build_phase = target.build_phases.find { |bp| bp.display_name == '[CP] Copy Pods Resources' }
      assets_path = '${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/Assets.car'
      if build_phase.present? && build_phase.output_paths.include?(assets_path) == true
          build_phase.output_paths.delete(assets_path)
      end
  end
  project.save(project_path)
  
  
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['0'] = ""
        config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
        config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        config.build_settings['SWIFT_VERSION'] = '4.2'
        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'NO'
        
      end
    end
  end
