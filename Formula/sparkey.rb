class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.25"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.25/sparkey-darwin-arm64"
      sha256 "bab4ff2ba917cf7c40c17e48f69eefa844f93c3081e5100c99eb9fadfd0be60c"
    else
      url "https://install.sparkey.ai/v0.5.25/sparkey-darwin-x64"
      sha256 "96ee23cec0810e1b66d9af42af37459d667f2effa572a0bbe4aae175bd44dcaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.25/sparkey-linux-arm64"
      sha256 "d2eb7ccd2a7d8223233a0c1c05c5a6f13660e12d653902457516704f07a8a137"
    else
      url "https://install.sparkey.ai/v0.5.25/sparkey-linux-x64"
      sha256 "7202236a6f5f74c0404234420ad77a64e1f615c8ae77a7719951e455bef43bca"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
