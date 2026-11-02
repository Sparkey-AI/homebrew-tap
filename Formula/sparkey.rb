class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.6.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.4/sparkey-darwin-arm64"
      sha256 "bb9e4b1065c1abedfe17105e8cdf718487a985f66729341ea56eb525ef9663d6"
    else
      url "https://install.sparkey.ai/v0.6.4/sparkey-darwin-x64"
      sha256 "7f72e72f16093c71df738a0b758fd9fd28810a8c7bd61889b50e98fff4c7127f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.4/sparkey-linux-arm64"
      sha256 "ebed4f19b8ada45e08968c496f79f87347a2a3c8d8cd440b4fc075cbe1da186c"
    else
      url "https://install.sparkey.ai/v0.6.4/sparkey-linux-x64"
      sha256 "9edba8a0aa22d1968d8f1993c037d40ae020bdbcfa7c5e689534322ebc5b336a"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
