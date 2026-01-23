class GemChat < Formula
  desc  "simple gemini chat built with ratatui"
  homepage  "https://github.com/thelazydo/gemchat"
  url "https://github.com/thelazydo/gemchat"
  sha256 "e0537b73487790150b9c6becc9e95428b8c812dd0c04a0df2660b3fc09b25123"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # specific test to verify installation, usually asking for version
    system "#{bin}/gemchat", "--version"
  end
end
