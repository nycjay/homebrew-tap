class Cntui < Formula
  desc "Terminal UI for Apple's container runtime"
  homepage "https://github.com/nycjay/cntui"
  url "https://github.com/nycjay/cntui/releases/download/v0.3.0/cntui-darwin-arm64.tar.gz"
  sha256 "1d5be6a059ee3a8032cf352b24e8e819b11b1caafd2d458616a4326c87dcd573"
  license "MIT"
  version "0.3.0"

  depends_on :macos

  def install
    bin.install "cntui"
  end

  test do
    assert_match "cntui", shell_output("#{bin}/cntui --version", 1)
  end
end
