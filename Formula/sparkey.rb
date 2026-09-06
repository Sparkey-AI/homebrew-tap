class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.22/sparkey-darwin-arm64"
      sha256 "9f8cfd972dbf31e5c37e175fa1e0a7854f831bcae6adf1c7a7b8182209fa0b58"
    else
      url "https://install.sparkey.ai/v0.5.22/sparkey-darwin-x64"
      sha256 "21a7ce7c194c396970aca0a6fcc7e16d0e92c88476e37f931f83f0208f4c171d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.22/sparkey-linux-arm64"
      sha256 "dbf10d225b5c047eef65150cca4b19a63dade12e09c0c00d0b7bd45c3dffbf8f"
    else
      url "https://install.sparkey.ai/v0.5.22/sparkey-linux-x64"
      sha256 "52a45bf13dc6486b397f5458f73415811d1c60626e2447e86548f3c1488a2f8b"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
