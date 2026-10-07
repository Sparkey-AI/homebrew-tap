class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.29"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.29/sparkey-darwin-arm64"
      sha256 "2188b8031a8f73a54c72e77339959a69010a82600e0d86d7d23c7ac333f9a5a3"
    else
      url "https://install.sparkey.ai/v0.5.29/sparkey-darwin-x64"
      sha256 "e47970a980eba216d5167e5399b89e352238fd5a492ed899f5dedad57a33a16e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.29/sparkey-linux-arm64"
      sha256 "ff0b695c14674c69014b3b6e249f57d0c9b9ab0f5b8b06425a89603c29146c55"
    else
      url "https://install.sparkey.ai/v0.5.29/sparkey-linux-x64"
      sha256 "1e95be3825b10b011076b4ae7e74d04a843cde5202f0469f28dcd01eb974a472"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
