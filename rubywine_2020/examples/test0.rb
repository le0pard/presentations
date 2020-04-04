describe sshd_config do
  its('Protocol') { should cmp 2 }
  its('UsePAM') { should eq 'yes' }
end

# describe package('auditd') do
#   it { should be_installed }
# end
