class Cntui < Formula
  desc "Terminal UI for Apple's container runtime"
  homepage "https://github.com/nycjay/cntui"
  url "https://github.com/nycjay/cntui/releases/download/v0.2.0/cntui-darwin-arm64.tar.gz"
  sha256 "e1b0865bd7c1d0596509aaa689398c74f1e571d62db6625101707ec3ee980a90"
  license "MIT"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "cntui"
  end

  test do
    assert_match "cntui", shell_output("#{bin}/cntui --version", 1)
  end
end
