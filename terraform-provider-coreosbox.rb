class TerraformProviderCoreosbox < Formula
  desc 'Terraform provider for getting CoreOS box information for a given IaaS, update channel and version (or current version)'
  homepage 'https://github.com/samsung-cnct/terraform-provider-coreosbox'
  url 'https://github.com/samsung-cnct/terraform-provider-coreosbox/releases/download/v0.0.2/terraform-provider-coreosbox_darwin_amd64.tar.gz'
  version '0.0.2'
  sha256 'fdaafea86561e213d80fb0bf1dd4f051fc03c0409757d6eb5aac67b2e24b8908'
  depends_on 'terraform'


  def install
    bin.install 'terraform-provider-coreosbox' 
    system "ln -sfn #{File.join(bin, name)} #{File.join(HOMEBREW_PREFIX, 'opt', 'terraform', 'bin', name)}"
  end
end
