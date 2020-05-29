# write your serverspec tests here!
require 'spec_helper'

describe 'Self-Signed certificates for example.com have been generated' do
    describe x509_certificate('/etc/ssl/example.com/example.com.pem') do
      it { should be_certificate }
      it { should be_valid }
      it { should have_purpose 'SSL server CA' }
    end
end
