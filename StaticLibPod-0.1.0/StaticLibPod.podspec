Pod::Spec.new do |s|
  s.name = "StaticLibPod"
  s.version = "0.1.0"
  s.summary = "A short description of StaticLibPod."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Jensen"=>"zys2@meitu.com"}
  s.homepage = "https://github.com/Jensen/StaticLibPod"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/StaticLibPod.embeddedframework/StaticLibPod.framework'
end
