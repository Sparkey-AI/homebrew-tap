class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sparkey-AI/sparkey-lens/releases/download/v0.5.24/sparkey-darwin-arm64"
      sha256 "935f5f33ee0f56783d1a709fc9d71846649ed5db91ebf7446b7b95c622a70f1d"
    else
      url "https://github.com/Sparkey-AI/sparkey-lens/releases/download/v0.5.24/sparkey-darwin-x64"
      sha256 "ec8beac2bdd5902661d72ee57e184652823a1fe939464f85571b5d585d5e9202"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sparkey-AI/sparkey-lens/releases/download/v0.5.24/sparkey-linux-arm64"
      sha256 "f5e4389009b27ba64405d8bf1c2015567413fa2890175c57b9d38cba0cfcb329"
    else
      url "https://github.com/Sparkey-AI/sparkey-lens/releases/download/v0.5.24/sparkey-linux-x64"
      sha256 "af2f259961d3c51750bd0d284cc710b664bc079040599a2caafbbcd67670660a"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
