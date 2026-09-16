class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.27"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.27/sparkey-darwin-arm64"
      sha256 "a30ad749ba8a2f22190dc6d6a7d3d5ff0c09a5989aec4cc08de4a197619933ac"
    else
      url "https://install.sparkey.ai/v0.5.27/sparkey-darwin-x64"
      sha256 "4bbe30bf6de7a133a3de6439ab1dd0ece4dbf1cff857a6eeb283699157c05577"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.27/sparkey-linux-arm64"
      sha256 "9a8c97de301c7dd1166d98ad823a978140e5b4ab941bbbd548475360e26cd4f8"
    else
      url "https://install.sparkey.ai/v0.5.27/sparkey-linux-x64"
      sha256 "0673bb12176874a877eb3e6cee01a8b224b45975c4f0729455cdbaeaec4b9e61"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
