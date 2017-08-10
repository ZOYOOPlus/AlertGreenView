Pod::Spec.new do |s|

  s.name         = "AlertGreenView"
  s.version      = "0.0.7"
  s.summary      = "用于项目中添加弹框自定义封装AlertGreenView."
  s.homepage     = "https://github.com/ZOYOOPlus/AlertGreenView"
    s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author    = { "tangyuanby2" => "tangyuanby2@163.com" }

  # s.social_media_url   = "http://www.taby2.com/"
    s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ZOYOOPlus/AlertGreenView.git", :tag => "#{s.version}" }
  s.source_files  = "AlertGreen/**/*.{h,m}"

  s.requires_arc = true

  # s.dependency "JSONKit", "~> 1.4"

end
