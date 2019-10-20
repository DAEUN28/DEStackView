Pod::Spec.new do |spec|

  spec.name         = "DEStackView"
  spec.version      = "0.1.0"
  spec.summary      = "Addable, deleteable StackView"

  spec.description  = <<-DESC
		      This StackView will help you to add and remove custom Views
                      DESC

  spec.homepage     = "https://github.com/DAEUN28/DEStackView"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "DAEUN28" => "acone1128@gmail.com" }

  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"
  spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/DAEUN28/DEStackView.git", :tag => spec.version }


  spec.source_files  = "Source/*"

end
