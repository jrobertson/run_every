Gem::Specification.new do |s|
  s.name = 'run_every'
  s.version = '0.1.8'
  s.summary = 'run_every'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('xthreads') 
  s.signing_key = '../privatekeys/run_every.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/run_every'
end
