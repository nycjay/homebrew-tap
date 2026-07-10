class Covername < Formula
  desc "Local-first document anonymization — detect PII and replace with cover identities"
  homepage "https://github.com/nycjay/covername"
  url "https://github.com/nycjay/covername/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "865d8eed716d71ac48c5c1d67a0495b1efe8c6e5d833f070f0da03acc8a87503"
  license "MIT"
  head "https://github.com/nycjay/covername.git", branch: "main"

  depends_on "rust" => :build
  depends_on "tesseract" => :recommended

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/covername-cli")
  end

  test do
    assert_match "covername", shell_output("#{bin}/covername --version")

    (testpath/"test.txt").write("Call John Smith at 555-123-4567")
    output = shell_output("#{bin}/covername scan #{testpath}/test.txt")
    assert_match "PHONE", output
  end
end
