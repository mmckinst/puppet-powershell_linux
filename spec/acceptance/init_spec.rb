require 'spec_helper_acceptance'

describe 'powershell_linux' do
  it 'should work with no errors' do
    pp = <<-EOS
         class {'::powershell_linux':}
         EOS
    # Run it twice and test for idempotency
    apply_manifest(pp, :catch_failures => true)
    expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero
  end
  describe package('powershell') do
    it { should be_installed }
  end
end
