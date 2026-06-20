class Cntui < Formula
  desc "Terminal UI for Apple's container runtime"
  homepage "https://github.com/nycjay/cntui"
  url "https://github.com/nycjay/cntui/releases/download/v0.3.1/cntui-darwin-arm64.tar.gz"
  sha256 "e869cf2ba48249bc8928b87cb8350eb4ebc21787eb27f250ea1244dc81f7e942"
  license "MIT"
  version "0.3.1"

  depends_on :macos

  def install
    bin.install "cntui"
  end

  test do
    assert_match "cntui", shell_output("#{bin}/cntui --version", 1)
  end
end
