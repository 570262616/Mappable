Pod::Spec.new do |s|
  s.name = 'Mappable'
  s.version = '0.0.2'
  s.license = 'MIT'
  s.summary = 'Swift JSON Mapping.'
  s.homepage = 'https://github.com/Arror/Mappable'
  s.authors = { 'Arror' => 'hallo.maqiang@gmail.com' }
  s.source = { git: 'https://github.com/Arror/Mappable.git', tag: s.version }
  s.source_files = 'Sources/*.swift'
  s.ios.deployment_target = '8.0'
end