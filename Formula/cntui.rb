class Cntui < Formula
  desc "Terminal UI for Apple's container runtime"
  homepage "https://github.com/nycjay/cntui"
  url "https://github.com/nycjay/cntui/releases/download/v0.1.0/cntui-darwin-arm64.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cntui"
  end

  test do
    assert_match "cntui", shell_output("#{bin}/cntui --version", 1)
  end
end
