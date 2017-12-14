Pod::Spec.new do |s|
  s.name             = 'RedpacketAliAuthLib'
  s.version          = '2.0.6'
  s.summary          = 'RedpacketAliAuthLib'
  s.description      = <<-DESC
                       RedpacketAliAuthLib, allow you to send redpacket in your project.
                       * Redpacket
                       * Alipay
                       * 支付宝支付
                       * 红包SDK
                       * 收红包直接到支付宝账户
                       DESC

  s.homepage         = 'http://yunzhanghu.com'
  s.license          = { :type => 'MIT', :file => "LICENSE" }
  s.author           = { 'Mr.Yang' => 'tonggang.yang@yunzhanghu.com' }
  s.source           = { :git => 'https://github.com/YunzhanghuOpen/cocoapods-redpacket-aliauth.git', :tag => "#{s.version}" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
  s.vendored_libraries = 'Redpacket/lib/*.a'
  s.source_files = 'Redpacket/*.{h,m}'
  s.public_header_files = 'Redpacket/*.h'
  s.resources = ['Redpacket/resources/*.bundle']
  s.frameworks = 'AudioToolbox', 'CFNetwork'
  s.libraries    = 'z'
  s.dependency 'RPAlipayLib'
  #s.resource = “redpacket.bundle"
  s.documentation_url = 'https://new.yunzhanghu.com/integration/ios.html'
end
