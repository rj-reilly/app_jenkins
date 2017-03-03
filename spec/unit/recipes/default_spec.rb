#
# Cookbook:: app_jenkins
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'app_jenkins::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'creates a directory[/appbin/jenkins/] with default action' do
    	expect(chef_run).to create_directory('/appbin/jenkins') 
    end

    # it 'creates file[/appin/jenkins/jenkins.war' do
    # 	expect(chef_run).to create_file('/appbin/jenkins/jenkins.war') 
    # end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
