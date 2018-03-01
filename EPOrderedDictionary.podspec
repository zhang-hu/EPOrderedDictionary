Pod::Spec.new do |s|
s.name             = 'EPOrderedDictionary'
s.version          = '0.1.1'
s.summary          = 'An implementation of the ordered dictionary for iOS'
s.description      = <<-DESC
It's known that the `NSDictionary` and `NSMutableDictionary` in Foundation framework are all unordered collections of key-value pairs, but in some real scenarios, we do need the data structure to hold the ordered key-value pairs. In order to fill this kind of gap, this library was born.
DESC

s.homepage         = 'https://github.com/zhang-hu/EPOrderedDictionary'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'zhanghu' => '1145512680@qq.com' }
s.source           = { :git => 'https://github.com/zhang-hu/EPOrderedDictionary.git', :tag => s.version.to_s }
s.ios.deployment_target = '2.0'
s.source_files = 'EPOrderedDictionary/Classes/*'
end

