class Spyder < Formula
  desc "CLI for Spyder agent messaging"
  homepage "https://github.com/Cocoon-AI/spyder"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.2/spyder-0.2.2-darwin-arm64"
      sha256 "5f5cd5d0792589706748fd3350c3bec11e72e4a0b8b5eccdd2d30dd48fc41276"
    else
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.2/spyder-0.2.2-darwin-amd64"
      sha256 "a117efe1ae0534cfdb3e9ebe3372c47e802534adfeaccd6c3b08d2007a24d801"
    end
  end

  on_linux do
    url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.2/spyder-0.2.2-linux-amd64"
    sha256 "ff7dde8c08b82efed0ef5f62f7e843279ed413d97760714c70184cea9c9eb74f"
  end

  def install
    binary_name = Dir["spyder-*"].first
    bin.install binary_name => "spyder"
  end

  test do
    assert_match "spyder version", shell_output("#{bin}/spyder version")
  end
end
