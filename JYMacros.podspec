Pod::Spec.new do |s|
  s.name             = 'JYMacros'
  s.version          = '0.0.1'
  s.summary          = 'Some Swift macros.'
  s.description      = <<-DESC
A proof of concept macro to show they can work with cocoapods.
                       DESC
  s.homepage         = 'https://github.com/SSBun'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caishilin' => 'caishilin@yahoo.com' }
  s.source           = { :git => 'https://github.com/SSBun/demo_swift_macro_pod', :tag => s.version.to_s }
  s.ios.deployment_target = '16.0'
  s.source_files = ['Sources/JYMacros/**/*']
  s.swift_version = "5.9"
  s.preserve_paths = ["macros/JYMacrosMacros"]
  s.pod_target_xcconfig = {
    #'OTHER_SWIFT_FLAGS' => "-load-plugin-executable #{Dir.pwd}/macros/JYMacrosMacros#JYMacrosMacros"
    'OTHER_SWIFT_FLAGS' => '-load-plugin-executable ${PODS_ROOT}/JYMacros/macros/JYMacrosMacros#JYMacrosMacros'
  }
  s.user_target_xcconfig = {
    #'OTHER_SWIFT_FLAGS' => "-load-plugin-executable #{Dir.pwd}/macros/JYMacrosMacros#JYMacrosMacros"
    'OTHER_SWIFT_FLAGS' => '-load-plugin-executable ${PODS_ROOT}/JYMacros/macros/JYMacrosMacros#JYMacrosMacros'
  }
end
