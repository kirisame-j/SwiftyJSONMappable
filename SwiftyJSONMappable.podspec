
Pod::Spec.new do |s|

  s.name         = "SwiftyJSONMappable"
  s.version      = "1.0.3"
  s.summary      = "SwiftyJSON extensions JSON->Model  Model->JSON  model->JSONString."
  s.description  = <<-DESC
				JSONMappable implement [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)
				Response+JSONMappable [Moya](https://github.com/Moya/Moya)
				Observable+JSONMappable [RxSwift](https://github.com/ReactiveX/RxSwift)
                     DESC

  s.homepage     = "https://github.com/ApterKing/SwiftyJSONMappable"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "ApterKing" => "wangcccong@outlook.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/ApterKing/SwiftyJSONMappable.git", :tag => "#{s.version}" }

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.default_subspec = "Mappable"

  s.subspec "Mappable" do |ss|
	ss.source_files = "Pod/Classes/JSONMappable.swift"	
  	ss.dependency "SwiftyJSON"
  	ss.frameworks = "Foundation"
  end

#  s.subspec "Moya" do |ss|
#	ss.source_files = "Pod/Classes/Response+JSONMappable.swift"	
#  	ss.dependency "Moya"
#	ss.dependency "SwiftyJSONMappable/Mappable"
#  end

#  s.subspec "RxSwift" do |ss|
#	ss.source_files = "Pod/Classes/Observable+JSONMappable.swift"	
#  	ss.dependency "Moya/RxSwift"
#	ss.dependency "SwiftyJSONMappable/Moya"
#  end

end
