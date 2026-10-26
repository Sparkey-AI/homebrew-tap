class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.6.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.3/sparkey-darwin-arm64"
      sha256 "0d83c014a33f20cad7716df63e5a3e36c75bfdda5e87cc1f6aa2c07ad245dde9"
    else
      url "https://install.sparkey.ai/v0.6.3/sparkey-darwin-x64"
      sha256 "1e56b6e172c28a41779d87ccfa786468da1756f01700234f4dcfdc5d0d7b7795"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.3/sparkey-linux-arm64"
      sha256 "994a2f702cd8650875b3976d215f2b0996bdbdf8fc2f637d320bc3c8e8cb81a9"
    else
      url "https://install.sparkey.ai/v0.6.3/sparkey-linux-x64"
      sha256 "6ffff29071b103b2087f9881638072585cbfad51202aa6cd461cbec99428e82d"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
