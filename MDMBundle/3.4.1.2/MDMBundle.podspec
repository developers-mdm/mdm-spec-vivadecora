Pod::Spec.new do |s|
    s.name                    = 'MDMBundle'
    s.version                 = '3.4.1.2'
    s.summary                 = 'Hands MDM'
    s.homepage                = 'https://hands.com.br/'

    s.author                  = { 'Name' => 'robson.moreira@hands.com.br' }
    s.license                 = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform                = :ios
    s.source                  = { :http => 'https://nexus.hands.com.br/repository/maven-external/br/com/hands/mdm/libs/ios/mdm-bundle/3.4.1.2/mdm-bundle-3.4.1.2.zip' }

    s.ios.deployment_target   = '10.0'
    s.ios.vendored_frameworks = 'MDMBundle.framework'

    s.subspec 'MDM' do |mdm|
        mdm.dependency 'MDMCore', '3.4.1.2'
        mdm.dependency 'MDMAppBehavior', '3.4.1.2'
        mdm.dependency 'MDMGeoBehavior', '3.4.1.2'
        mdm.dependency 'MDMNotification', '3.4.1.2'
    end

end
