#
# Cookbook Name:: deploy-user
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'deploy-user::default' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'creates a user deployer with home "/home/deployer" and shell "/bin/bash"' do
      expect(chef_run).to create_user('deployer').with(
        home: '/home/deployer',
        shell: '/bin/bash')
    end

end
