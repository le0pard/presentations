control 'Test Windows Super User' do
  impact 0.5
  title 'Superuser Test'
  desc 'Make sure the Administrator user exists.'

  only_if do
    os.windows?
  end

  describe user('Administrator') do
    it { should exist }
  end
end

control 'Test *nix Super User' do
  impact 0.5
  title 'Superuser Test'
  desc 'Make sure the root user exists.'

  only_if do
    os.redhat? || os.debian? || os.linux? || os.darwin? || os.bsd?
  end

  describe user('root') do
    it { should exist }
  end
end
