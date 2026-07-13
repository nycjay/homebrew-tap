class Covername < Formula
  desc "Local-first document anonymization — detect PII and replace with cover identities"
  homepage "https://github.com/nycjay/covername"
  url "https://github.com/nycjay/covername/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e877dee4f33d8f5c62fd0259f2bb915e2d549ee3fe95f3611d99e39d7dd36dc8"
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
