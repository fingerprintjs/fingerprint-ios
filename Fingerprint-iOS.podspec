Pod::Spec.new do |spec|
  # Name and version
  spec.name         = 'Fingerprint-iOS'
  spec.version      = '4.3.0'

  # License
  spec.license      = { type: 'Custom', file: 'LICENSE' }

  # Contact information
  spec.homepage     = 'https://fingerprint.com/'
  spec.authors      = {
    'Fingerprint.com': 'support@fingerprint.com'
  }

  # Fingerprint library description
  spec.summary = 'Fingerprint\'s lightweight device fingerprinting library for iOS'
  spec.description = <<-DESC
  Fingerprint is a simple wrapper around Fingerprint\'s API that collects device information
  to uniquely identify iOS devices. The library communicates with the Fingerprint backend to send
  device signals (hardware information, available identifiers, OS information and device settings)
  and get a more precise fingerprint in return.
  DESC

  spec.ios.deployment_target = '14.0'
  spec.tvos.deployment_target = '15.0'

  spec.swift_versions = ['5.9', '5.10', '6.0']

  spec.vendored_frameworks = 'Fingerprint.xcframework'

  checksum = "2b87281840c044e86b8949f27c2d719a84ca595ff5abb868e891e5faba75fa05"

  spec.source = {
    :http => "https://fpjs-public.s3.amazonaws.com/ios/#{spec.version}/Fingerprint-#{spec.version}-#{checksum}.xcframework.zip"
  }
end
