Pod::Spec.new do |s|
    s.name         = "YWNamePlaceholder"
    s.version      = "0.1"
    s.summary      = "YWNamePlaceholder Generic Place holder profile"
    s.description  = "Place holder of every empty profile picture. Lightweight circular profile initial for placeholder before adding images"
    s.requires_arc = true
    s.homepage     = "https://github.com/nsnull0/YWNamePlaceholder"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "yoseph_wijaya" => "info@yoseph.ws" }
    s.platform     = :ios
    s.ios.deployment_target = "9.0"
    s.source       = { :git => "https://github.com/nsnull0/YWNamePlaceholder.git", :tag => "#{s.version}" }
    s.source_files  = "YWNamePlaceholder/YWNamePlaceholder/*.{swift}"
    s.resources = "YWNamePlaceholder/View/*.{png,jpeg,jpg,storyboard,xib}"
    s.framework  = "UIKit"





end
