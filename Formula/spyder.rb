class Spyder < Formula
  desc "CLI for Spyder agent messaging"
  homepage "https://github.com/Cocoon-AI/spyder"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.0/spyder-0.2.0-darwin-arm64"
      sha256 "03f9cc736575a5ae0eca3dae1b8e8afd9b27310c9b692be9261bd57230be123b"
    else
      url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.0/spyder-0.2.0-darwin-amd64"
      sha256 "f418a418eb359f8d9ba4722d752b20d0d4409d74b5cce98f6a34a2a7e6d84fa9"
    end
  end

  on_linux do
    url "https://dbe7177numv5y.cloudfront.net/spyder/0.2.0/spyder-0.2.0-linux-amd64"
    sha256 "08df729e1b9624162c6ea59d4ffbb055ec4c193342477e7ca5cb0926e62c6a03"
  end

  def install
    binary_name = Dir["spyder-*"].first
    bin.install binary_name => "spyder"
  end

  test do
    assert_match "spyder version", shell_output("#{bin}/spyder version")
  end
end
