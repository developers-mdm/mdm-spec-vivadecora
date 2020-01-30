Pod::Spec.new do |s|
    s.name                    = 'MDMAppBehavior'
    s.version                 = '3.4.3'
    s.summary                 = 'Hands MDM'
    s.homepage                = 'https://hands.com.br/'

    s.author                  = { 'Name' => 'robson.moreira@hands.com.br' }
    s.license                 = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform                = :ios
    s.source                  = { :http => 'https://nexus.hands.com.br/repository/maven-releases/br/com/hands/mdm/libs/ios/mdm-appbehavior/3.4.3/mdm-appbehavior-3.4.3.zip' }

    s.ios.deployment_target   = '10.0'
    s.ios.vendored_frameworks = 'MDMAppBehavior.framework'

    s.subspec 'MDM' do |mdm|
        mdm.dependency 'MDMCore', '3.4.3'
    end

end
