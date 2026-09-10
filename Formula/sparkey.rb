class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.23/sparkey-darwin-arm64"
      sha256 "7910363f7ddb383894f030f879cc03c836a433445500d697dd28fb3321ccfdaf"
    else
      url "https://install.sparkey.ai/v0.5.23/sparkey-darwin-x64"
      sha256 "176eeb0d0ec4f6adc4252606aa4d592fc1f7756d2a0fa115cecb60d9e78c9689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.23/sparkey-linux-arm64"
      sha256 "9182a3dc66678e5a0270467f3309b0f68308bfa9ca935aa5a2894d0247936fed"
    else
      url "https://install.sparkey.ai/v0.5.23/sparkey-linux-x64"
      sha256 "e4b600534d7fa8b16304798478c68a96dd77c90d79951016abd623ccd3f0251f"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
