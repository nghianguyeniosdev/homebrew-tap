class Acd < Formula
  desc "Download and verify AWS CodeArtifact generic-package assets"
  homepage "https://github.com/nghianguyeniosdev/cad"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/nghianguyeniosdev/cad/releases/download/v0.1.0/acd-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "cfac56797a76fcb334cf48ce626e1a4928ac52e23f867b33a75a4e90aad0723a"

  def install
    bin.install "acd"
  end

  test do
    assert_match "acd", shell_output("#{bin}/acd version")
  end
end
