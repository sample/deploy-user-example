require 'spec_helper'

describe 'deploy-user::default' do

  describe user('deployer') do
    it { should exist }
    it { should have_home_directory '/home/deployer' }
    it { should have_login_shell '/bin/bash' }
  end

  describe file('/home/deployer') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'deployer' }
    it { should be_grouped_into 'deployer' }
  end

end
