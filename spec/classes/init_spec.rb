require 'spec_helper'

describe 'powershell_linux' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "powershell_linux class without any parameters" do
          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_class('powershell_linux') }
          it { is_expected.to contain_class('powershell_linux::params') }
          it { is_expected.to contain_class('powershell_linux::install') }
          it { is_expected.to contain_package('libunwind')} 
          it { is_expected.to contain_package('libicu') }
          it { is_expected.to contain_package('powershell') }
	end
        context "powershell_linux custom parameters" do
          let (:params) {{ :release_url => 'https://example.com/powershell',
                           :version     => '3.1.4-final.4',
                           :release     => '2' }}
          it { is_expected.to contain_package('powershell').with_source(%r{https://example.com/powershell/.*3.1.4_final.4-2}) }
          
	end

      end
    end
  end
end
