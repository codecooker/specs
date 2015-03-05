Pod::Spec.new do |s|
  s.name     = 'YYUIKit'
  s.version  = '0.0.1'
  s.summary  = '是基于iOS UIKit 封装出得一个UI库'
  s.homepage = 'http://codecooker.github.com'
  s.author   = { 'codecooker' => 'codecooker@outlook.com' }
  s.license  = 'New BSD License'
  s.platform      = :ios, "6.0"
  s.source   = { :git => 'git@amigoon.com:repositories/YYUIKit-Source.git', :commit => '6abd8d1a413873266383ab849467fba5bf428176' }

  s.description = %{
    YYUIKit 是基于iOS UIKit 封装出得一个UI库，可以简单的实现UIKit开发。对一些特有的控件进行了封装和二次开发。
  }

  s.source_files = '**/*.{h,m,c,mm,cpp}'

  s.ios.dependency 'SDWebImage'
  s.ios.frameworks   = 'UIKit', 'CoreGraphics'

  s.requires_arc = true
end
