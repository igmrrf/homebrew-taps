class Gemchat < Formula
  desc  "simple gemini chat built with ratatui"
  homepage  "https://github.com/igmrrf/gemchat"
  url "https://github.com/igmrrf/gemchat"
  sha256 "e5bffd2c4720832cd0ca57ff3f75c07edf9088f7cdf7d52cbd0e6aa4ca77fa4a"
  version "0.0.3"
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
