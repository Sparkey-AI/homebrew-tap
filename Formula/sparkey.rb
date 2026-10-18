class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.0/sparkey-darwin-arm64"
      sha256 "59d18b118b3079c9c04f72569077bdb9a1a219141482e1514b585a70a61cc6e7"
    else
      url "https://install.sparkey.ai/v0.6.0/sparkey-darwin-x64"
      sha256 "241b5b99c89943a8d5c1a80d64b20df0abd9d41bfbffe16508aa6c39f279addc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.6.0/sparkey-linux-arm64"
      sha256 "f476367133f33b37b18224cb6e9123d43e653a3398787eb9e746d28eda0342cc"
    else
      url "https://install.sparkey.ai/v0.6.0/sparkey-linux-x64"
      sha256 "b06f7966e1315812d1fe633a15e0710fa9dfc8ebff40ef94aa0da24242742480"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
