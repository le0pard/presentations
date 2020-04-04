control 'ssh-04' do
  impact 1.0
  title 'Client: Specify protocol version 2'
  desc "Only SSH protocol version 2 connections should be permitted. Version 1 of the protocol contains security vulnerabilities. Don't use legacy insecure SSHv1 connections anymore."
  describe ssh_config do
    its('Protocol') { should eq('2') }
  end
end

control 'ssh-11' do
  impact 1.0
  title 'Client: Disable agent forwarding'
  desc 'Prevent agent forwarding by default, as it can be used in a limited way to enable attacks.'
  describe ssh_config do
    its('ForwardAgent') { should eq('no') }
  end
end
