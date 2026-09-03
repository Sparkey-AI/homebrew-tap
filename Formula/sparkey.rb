class Sparkey < Formula
  desc "Capture coding-agent sessions from Claude Code, Cursor, Codex, and more"
  homepage "https://sparkey.ai"
  version "0.5.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.21/sparkey-darwin-arm64"
      sha256 "321ab1b18a3d9ca2e8faac7a6bff20fde5307c95dc55aa21ffd4c046c0e7246e"
    else
      url "https://install.sparkey.ai/v0.5.21/sparkey-darwin-x64"
      sha256 "a4eeb4835b0d16086524ee983f4042087ca3338f3405fc7cc6f46e0c5d96f9ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://install.sparkey.ai/v0.5.21/sparkey-linux-arm64"
      sha256 "190530297382f97935a41f201d4d5998b6175e4a6e34a0bdb6235623f8ec194b"
    else
      url "https://install.sparkey.ai/v0.5.21/sparkey-linux-x64"
      sha256 "9e92204ba28fc1ac27cfbab15898e8e28c5ca8047f97920e91a56ad4a207a2b5"
    end
  end

  def install
    bin.install Dir["sparkey-*"].first => "sparkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkey version")
  end
end
