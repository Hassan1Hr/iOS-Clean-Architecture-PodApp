# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'ChatApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ChatApp
  pod 'RealmSwift', '10.28.3'
  pod 'SKPhotoBrowser', '7.0.0'
  pod 'MessageKit', '3.8.0'
  pod 'InputBarAccessoryView'
  pod 'Firebase/Core', '10.0.0'
  pod 'Firebase/Auth', '10.0.0'
  pod 'Firebase/Firestore', '10.0.0'
  pod 'Firebase/Storage', '10.0.0'
  pod 'Firebase/Analytics', '10.0.0'
  pod 'Firebase/Messaging', '10.0.0'
  pod 'FirebaseFirestoreSwift', '10.0.0'
  pod 'Gallery', '2.4'
  pod 'SkeletonView', '1.21.2'
  pod 'AllowX', '1.1.2'
  pod 'R.swift', '5.4.0'
  pod 'Alamofire', '5.4.3'
  pod 'IQKeyboardManagerSwift', '6.5.6'
  pod 'SwiftLint', '0.43.1'
  pod 'lottie-ios', '3.2.3'
  pod 'Resolver', '1.4.3'
  pod 'JGProgressHUD', '2.2'
  pod 'Kingfisher', '7.1.1'

post_install do |pi|
   pi.pods_project.targets.each do |t|
       t.build_configurations.each do |bc|
           if bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '8.0' || bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '9.0' || bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '10.0'
             bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
           end
       end
   end
end

end
