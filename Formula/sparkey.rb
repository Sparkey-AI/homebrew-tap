class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.6.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.1/sparkey-darwin-arm64"
      sha256 "7e51f0fa3b2f67a700e96a8aafacee109c7cb41c5a56b62f57a259360438aefc"
    else
      url "https://install.sparkey.ai/v0.6.1/sparkey-darwin-x64"
      sha256 "7ebedf4f8e0f9eded4212e538b4eb0fbb1b16d5f802b9a4f88ad1369f0aed421"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.1/sparkey-linux-arm64"
      sha256 "609cb99b3827852cae2d6721c1d88b7bedda7ea0a90c6eb313aa0de232549b42"
    else
      url "https://install.sparkey.ai/v0.6.1/sparkey-linux-x64"
      sha256 "608d526c16c7fafa06796924ed20b283c3569c6ae94d98ec922d9ea6c31d8e0b"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
