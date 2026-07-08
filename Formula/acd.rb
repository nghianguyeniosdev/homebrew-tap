class Acd < Formula
  desc "Download and verify AWS CodeArtifact generic-package assets"
  homepage "https://github.com/nghianguyeniosdev/cad"
  version "0.1.1"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/nghianguyeniosdev/cad/releases/download/v0.1.1/acd-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "c7811cdb64f3b72407ce96cc9714c63753b57b56139959e36801915dd521f37f"

  def install
    bin.install "acd"
  end

  test do
    assert_match "acd", shell_output("#{bin}/acd version")
  end
end
