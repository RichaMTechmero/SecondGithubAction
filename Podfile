# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'GitTetsingDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GitTetsingDemo

  target 'GitTetsingDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'GitTetsingDemoUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    config.build_settings["ONLY_ACTIVE_ARCH"] = "NO"
  end
end
