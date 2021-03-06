Pod::Spec.new do |s|
  s.name         = "CJDataListView"
  s.version      = "1.2.0"
  s.summary      = "数据列表视图"
  s.homepage     = "https://github.com/dvlproad/CJPopup"
  s.license      = "MIT"
  s.author             = "dvlproad"
  # s.social_media_url   = "http://twitter.com/dvlproad"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/dvlproad/CJPopup.git", :tag => "1.2.0" }
  s.source_files  = "CJDataListView/**/*.{h,m}"
  # s.resources = "CJDataListView/**/*.{png,xib}"
  s.frameworks = 'UIKit'

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
