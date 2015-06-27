Pod::Spec.new do |s|
  s.name         = "Spectral"
  s.version      = "0.0.1"
  s.summary      = "A µframework that adds hex support to UIColor/NSColor"

  s.homepage     = "https://github.com/larcus94/Spectral"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Laurin Brandner" => "hello@laurinbrandner.ch" }
  s.social_media_url   = "http://twitter.com/larcus94"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://github.com/larcus94/Spectral.git", :tag => s.version }
  s.source_files  = "Spectral/Spectral/*.swift"

  s.requires_arc = true

end
