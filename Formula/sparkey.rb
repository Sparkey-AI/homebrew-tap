class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.6.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.2/sparkey-darwin-arm64"
      sha256 "969672709efbf7d70d3e1c4ef1608dea06d1d9816defb5c470057e41d08885d9"
    else
      url "https://install.sparkey.ai/v0.6.2/sparkey-darwin-x64"
      sha256 "81a2c7491195dc28384f53e5e2b6fe7af526db9802f0520891ea57c08c2097e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.2/sparkey-linux-arm64"
      sha256 "09b29911ad20636e5408d8a3f399ab8e9f9e8c6f23cc6b66726ab31b65df895e"
    else
      url "https://install.sparkey.ai/v0.6.2/sparkey-linux-x64"
      sha256 "dd36de94f2be1159f58f5ad068ea49c31d9bc22955942b31ded8fe380789738a"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
