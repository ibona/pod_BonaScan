#
# Be sure to run `pod lib lint pod_SHLUILabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "pod_bonaImageUpload"
  s.version          = "0.1.0"
  s.summary          = "A short description of https://github.com/ibona/pod_BonaScan."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/ibona/pod_BonaScan"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "ztq" => "zhangtongqing@ibona.cn" }
  s.source           = { :git => "https://github.com/ibona/pod_BonaScan.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = '*.{h,m}'
    s.resource     = 'LBXScan+UIKit/CodeScan.bundle'
    s.requires_arc = true
    s.prefix_header_contents = '#import <Foundation/Foundation.h>'
    s.subspec 'LBXScanCore' do |ss|
      ss.source_files = 'LBXScanCore/*.{h,m}'
      ss.subspec 'LibZXing' do |sss|
         sss.subspec 'ZXingWrapper' do |ssss|
         ssss.source_files = 'LBXScanCore/LibZXing/ZXingWrapper/*.{h,m}'
         end
         sss.subspec 'ZXingObjC' do |ssss|
         ssss.source_files = 'LBXScanCore/LibZXing/ZXingObjC/**/*.{h,m}'
         end
      end
    end
    s.subspec 'LBXScan+UIKit' do |ss|
      ss.source_files = 'LBXScan+UIKit/*.{h,m}'
    end
end
