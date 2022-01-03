
Pod::Spec.new do |s|
  s.name             = 'StaticLibPod'
  s.version          = '0.1.13'
  s.summary          = 'A short description of StaticLibPod.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Jensen/StaticLibPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jensen' => 'zys2@meitu.com' }
  s.source           = { :git => 'https://github.com/Jensen/StaticLibPod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
#  s.module_name = 'staticlib'

  s.source_files = ['StaticLibPod/Classes/*.{h,m}', 'StaticLibPod/libs/**/*.h']
  s.project_header_files = 'StaticLibPod/Classes/Subspec2/YSSubspec2Tool2.h'
  s.vendored_libraries = 'StaticLibPod/libs/**/*.a'
  
  s.subspec 'Subspec1' do |ss|
    ss.source_files = 'StaticLibPod/Classes/Subspec1/**/*.{h,m}'
    ss.vendored_frameworks = 'StaticLibPod/fwks/StaticFramework.framework', 'StaticLibPod/fwks/MTGSDK.xcframework'
    ss.resource = 'StaticLibPod/Classes/Subspec1/s1.bundle'
  end
  
  s.subspec 'Subspec2' do |ss|
    ss.source_files = 'StaticLibPod/Classes/Subspec2/**/*.{h,m}'
    ss.private_header_files = 'StaticLibPod/Classes/Subspec2/YSSubspec2Tool1.h'
    ss.project_header_files = 'StaticLibPod/Classes/Subspec2/YSSubspec2Tool2.h'
    ss.vendored_frameworks = 'StaticLibPod/fwks/DynamicFramework.framework'
    ss.resource_bundles = {
      'StaticLibPodS2' => ['StaticLibPod/Classes/Subspec2/imgs/*.png']
    }
  end
  
#  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  
   s.resource_bundles = {
     'StaticLibPod' => ['StaticLibPod/Assets/*.png']
   }
   s.resources = 'StaticLibPod/*.json'

   s.static_framework = true
   
   # s.dependency 'Zys2PodBBBBB'
end
