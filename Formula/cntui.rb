class Cntui < Formula
  desc "Terminal UI for Apple's container runtime"
  homepage "https://github.com/nycjay/cntui"
  url "https://github.com/nycjay/cntui/releases/download/v0.3.2/cntui-darwin-arm64.tar.gz"
  sha256 "37c14802cfd199c5ff99075e684604621a1e3e2ad75e08c1a0f7fe06b79f4485"
  license "MIT"
  version "0.3.2"

  depends_on :macos

  def install
    bin.install "cntui"
  end

  test do
    assert_match "cntui", shell_output("#{bin}/cntui --version", 1)
  end
end
