class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.28"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.28/sparkey-darwin-arm64"
      sha256 "6652172e4bf4458336d704caa0b890296500241a3e45daad9bf89955d997c6ba"
    else
      url "https://install.sparkey.ai/v0.5.28/sparkey-darwin-x64"
      sha256 "4ec7b75dd179c29be2043805ce5f980be786471164268077838b135248af22d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.28/sparkey-linux-arm64"
      sha256 "639fe6a19daf966e14f6a8ca79e73932b3bee9e5325357e123571494f11f78e6"
    else
      url "https://install.sparkey.ai/v0.5.28/sparkey-linux-x64"
      sha256 "4739fc65bff0159d0ea72eb4245c20b70e48f1e7c6e1fff2a4ae925bb6478741"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
