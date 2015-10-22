Pod::Spec.new do |s|

  s.name          = "YYShareModule"
  s.version       = "0.0.1"

  s.summary       = "分享模块,支持自定义分享平台和对分享平台的扩展.每个分享平台亦可单独分享使用"
  s.description   = <<-DESC
                   快速部署框架的分享模块，支持自定义分享平台和对分享平台的扩展。每个分享平台亦可单独分享使用，亦可组合使用
                   DESC

  s.homepage      = "http://codecooker.cn/2015/10/iOS%E5%88%86%E4%BA%AB%E5%BC%95%E6%93%8E.html"
  s.authors       = { "codecooker" => "codecooker@outlook.com" }
  s.license       = {
                      :type => 'Copyright',
                      :text => <<-LICENSE
                                codecooker copyright
                                LICENSE
                    }
  
  s.platform      = :ios, "5.0"
  s.osx.deployment_target = "10.7"

  s.source        = { :git => "https://github.com/codecooker/YYShareModule.git"}
  s.requires_arc  = true

  s.subspec "Core" do |sc|
    sc.summary       = "分享引擎的核心模块，分享模块的基础"
    sc.source_files = "Core/**/*.{h,m,c,mm,cpp}","Engine/**/*.{h,m,c,mm,cpp}"
  end

  s.subspec "DefaultView" do |sd|
    sd.summary       = "分享模块引擎默认分享页面"
    sd.source_files = "DefaultView/**/*.{h,m,c,mm,cpp}"
    sd.resources     = "DefaultView/Resources/**/*.{plist,png,inl,tbcp}"
    sd.dependency 'YYShareModule/Core'
    sd.dependency 'YYUIKit', '~> 0.0.1'
  end

  s.subspec "CopyPlugin" do |scp|
    scp.summary       = "分享模Copy插件"
    scp.source_files = "Plugins/Copy/**/*.{h,m,c,mm,cpp}"
    scp.resources     = "Plugins/Copy/**/*.{plist,png}"
    scp.dependency 'YYShareModule/Core'
  end

  s.subspec "LwPlugin" do |slwp|
    slwp.summary       = "分享模来往插件"
    slwp.source_files = "Plugins/Laiwang/**/*.{h,m,c,mm,cpp}"
    slwp.resources     = "Plugins/Laiwang/**/*.{plist,png}"
    slwp.frameworks = "CoreTelephony"
    slwp.libraries = "z", "stdc++","iconv","sqlite3","sqlite3.0"
    slwp.dependency 'LaiWangSDK', '2.0.0-arm64'
    slwp.dependency 'YYShareModule/Core'
  end

  s.subspec "MailPlugin" do |smp|
    smp.summary       = "分享模Email插件"
    smp.source_files = "Plugins/Email/**/*.{h,m,c,mm,cpp}"
    smp.resources     = "Plugins/Email/**/*.{plist,png}"
    smp.dependency 'YYShareModule/Core'
  end

  s.subspec "QQPlugin" do |sqqp|
    sqqp.summary       = "分享模QQ插件"
    sqqp.source_files = "Plugins/QQ/**/*.{h,m,c,mm,cpp}"
    sqqp.resources     = "Plugins/QQ/**/*.{plist,png}"
    sqqp.frameworks = "CoreTelephony"
    sqqp.libraries = "z", "stdc++","iconv","sqlite3","sqlite3.0"
    sqqp.dependency  'TencentOpenApiSDK', '~> 2.3.1.2'
    sqqp.dependency 'YYShareModule/Core'
  end

   s.subspec "QRPlugin" do |sqrp|
    sqrp.summary       = "分享模QQ插件"
    sqrp.source_files = "Plugins/QR/**/*.{h,m,c,mm,cpp}"
    sqrp.resources     = "Plugins/QR/**/*.{plist,png}"
    sqrp.requires_arc  = true
    sqrp.dependency 'GDataXMLNode', '~> 1.0.0'
    sqrp.dependency 'QRCodeGenerator'
    sqrp.dependency 'YYShareModule/Core'
  end

  s.subspec "SinaPlugin" do |sswp|
    sswp.summary       = "分享模Sina微博插件"
    sswp.source_files = "Plugins/SinaWeibo/**/*.{h,m,c,mm,cpp}"
    sswp.resources     = "Plugins/SinaWeibo/**/*.{plist,png}"
    sswp.requires_arc  = true
   sswp.frameworks = "CoreTelephony"
   sswp.libraries = "z", "stdc++","iconv","sqlite3","sqlite3.0"
    sswp.dependency 'SinaWeiboSDK', '~> 2.5.1'
   sswp.dependency 'YYShareModule/Core'
  end

  s.subspec "SMSPlugin" do |ssmsp|
    ssmsp.summary       = "分享模SMS插件"
    ssmsp.source_files = "Plugins/SMS/**/*.{h,m,c,mm,cpp}"
    ssmsp.resources     = "Plugins/SMS/**/*.{plist,png}"
    ssmsp.requires_arc  = true
   ssmsp.dependency 'YYShareModule/Core'
  end

  s.subspec "WxPlugin" do |swxp|
    swxp.summary       = "分享模微信插件"
    swxp.source_files = "Plugins/Weixin/**/*.{h,m,c,mm,cpp}"
    swxp.resources     = "Plugins/Weixin/**/*.{plist,png}"
    swxp.frameworks = "CoreTelephony"
    swxp.frameworks = "SystemConfiguration"
   swxp.libraries = "z", "stdc++","iconv","sqlite3","sqlite3.0"
    swxp.dependency 'libWeChatSDK', '1.5'
   swxp.dependency 'YYShareModule/Core'
  end
end