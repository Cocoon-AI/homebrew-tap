class Spyder < Formula
  desc "CLI for Spyder agent messaging"
  homepage "https://github.com/Cocoon-AI/spyder"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cocoon-ai-releases.s3.us-west-2.amazonaws.com/spyder/0.1.0/spyder-0.1.0-darwin-arm64"
      sha256 "c82c85a0195dc56d9c23f7654cd1d430999f6f375990b3224871102775939fff"
    else
      url "https://cocoon-ai-releases.s3.us-west-2.amazonaws.com/spyder/0.1.0/spyder-0.1.0-darwin-amd64"
      sha256 "dae9e18ce048b7d5c40de4fee4763eea97775b4c460e32cce290ad17a6fe9f7b"
    end
  end

  on_linux do
    url "https://cocoon-ai-releases.s3.us-west-2.amazonaws.com/spyder/0.1.0/spyder-0.1.0-linux-amd64"
    sha256 "f6a85af96e493f4906a6a8a20553073ac7040c710e46ab1e38d77b7e00b53412"
  end

  def install
    binary_name = Dir["spyder-*"].first
    bin.install binary_name => "spyder"
  end

  test do
    assert_match "spyder version", shell_output("#{bin}/spyder version")
  end
end
