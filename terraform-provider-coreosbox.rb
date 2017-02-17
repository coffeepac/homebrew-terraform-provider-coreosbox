class TerraformProviderCoreosbox < Formula
  desc 'Terraform provider for getting CoreOS box information for a given IaaS, update channel and version (or current version)'
  homepage 'https://github.com/samsung-cnct/terraform-provider-coreosbox'
  url 'https://github.com/samsung-cnct/terraform-provider-coreosbox/releases/download/v0.0.3/terraform-provider-coreosbox_darwin_amd64.tar.gz'
  version '0.0.3'
  sha256 '95cbe7cd329094736d91cd51a8c6372653c28f3997c511b3db89e49a1d280ecf'
  depends_on 'terraform'


  def install
    bin.install 'terraform-provider-coreosbox' 
    system "ln -sfn #{File.join(bin, name)} #{File.join(HOMEBREW_PREFIX, 'opt', 'terraform', 'bin', name)}"
  end
end
