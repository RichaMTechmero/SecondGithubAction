# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'GitTetsingDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GitTetsingDemo
  pod 'SwiftLint'
  target 'GitTetsingDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'GitTetsingDemoUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  # XCode 14 fix
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
        config.build_settings['ENABLE_BITCODE'] = 'NO'
      
        config.build_settings['SUPPORTED_PLATFORMS'] = 'iphoneos iphonesimulator'
        config.build_settings['SUPPORTS_MACCATALYST'] = 'NO'
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
      end
    end
  end
end
