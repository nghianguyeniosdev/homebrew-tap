class Acd < Formula
  desc "Download and verify AWS CodeArtifact generic-package assets"
  homepage "https://github.com/nghianguyeniosdev/cad"
  version "0.1.3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/nghianguyeniosdev/cad/releases/download/v0.1.3/acd-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "03062b2b5ddf54dc9c2e14c52a3d5012756fb1ba4a32eb0abac89980276af514"

  def install
    bin.install "acd"
  end

  test do
    assert_match "acd", shell_output("#{bin}/acd version")
  end
end
