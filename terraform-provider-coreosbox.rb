require 'json'

class TerraformProviderCoreosbox < Formula
  desc 'Terraform provider for getting CoreOS box information for a given IaaS, update channel and version (or current version)'
  homepage 'https://github.com/Samsung-AG/terraform-provider-coreosbox'
  url 'https://github.com/Samsung-AG/terraform-provider-coreosbox/releases/download/v0.0.1/terraform-provider-coreosbox_darwin_amd64.tar.gz'
  version '0.0.1'
  sha256 '666ff6adbd56e1d86562685365c8de4362a84793eb38824a67953e87775fb7bb'
  depends_on 'terraform'


  def install
    bin.install 'terraform-provider-coreosbox' 
    system "ln -s #{File.join(bin, name)} #{File.join(HOMEBREW_PREFIX, 'opt', 'terraform', 'bin', name)}"
  end
end
