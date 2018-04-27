Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name = "ui99"
  s.summary = "UI-related utilities for iOS applications."
  s.requires_arc = true
  s.version = "1.0.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Hai Pham" => "swiften.svc@gmail.com" }
  s.homepage = "https://github.com/team99/99-ios-ui-utils.git"
  s.source = { :git => "https://github.com/team99/99-ios-ui-utils.git", :tag => "#{s.version}"}

  s.subspec 'Main' do |main|
    main.source_files = "ui99/**/*.{swift}"
  end
end
