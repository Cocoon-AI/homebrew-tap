class Spyder < Formula
  desc "CLI for Spyder agent messaging"
  homepage "https://github.com/Cocoon-AI/spyder"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.1/spyder-0.2.1-darwin-arm64"
      sha256 "fa70872c9be47166bbc022696e037feb6ab85fd231ad7656892a04d7bb779ccb"
    else
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.1/spyder-0.2.1-darwin-amd64"
      sha256 "691c2c38faabf3300f1ac70bb687d7d2c5972e2aa105f00791df0fca357dd6e8"
    end
  end

  on_linux do
    url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.1/spyder-0.2.1-linux-amd64"
    sha256 "f71fb41a401647810a1f228c3b8f1a1147e83c3c1161b42582f2f71681f04e74"
  end

  def install
    binary_name = Dir["spyder-*"].first
    bin.install binary_name => "spyder"
  end

  test do
    assert_match "spyder version", shell_output("#{bin}/spyder version")
  end
end
