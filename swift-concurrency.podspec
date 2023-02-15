Pod::Spec.new do |s|
  s.name             = 'swift-concurrency'
  s.version          = '0.1.0'
  s.summary          = 'Uber\'s swift-concurrency.'
  s.description      = <<-DESC
A set of concurrency utility classes used by Uber. These are largely inspired by the equivalent java.util.concurrent package classes.
                       DESC

  s.homepage         = 'https://github.com/uber/swift-concurrency'
  s.license          = { :type => 'Apache License 2.0', :text => <<-LICENSE
                   Check: https://app.fossa.io/projects/git%2Bgithub.com%2Fuber%2Fswift-concurrency/refs/branch/master/1afb463d8ee3582fa526b29ca3c85ae253fc093a/preview
                 LICENSE
}
  s.author           = { 'Uber' => 'rudro' }
  s.source           = { :git => 'https://github.com/uber/swift-concurrency.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_versions = [5.0]
  s.default_subspec = 'Concurrency'

  s.subspec 'ObjCBridges' do |ss|
    ss.source_files = 'Sources/ObjCBridges/**/*.{h,m}'
  end

  s.subspec 'Concurrency' do |ss|
    ss.source_files = 'Sources/Concurrency/**/*.{h,m,swift}'
    ss.dependency 'swift-concurrency/ObjCBridges'
  end
end
