class ArduinoTui < Formula
  desc "Terminal UI for Arduino libraries"
  homepage "https://github.com/igmrrf/arduino-tui"
  url "https://github.com/igmrrf/arduino-tui"
  sha256 "8c0a1cf3c729f1799e9f42a65df9b25ceef22a2ea0c58213e7977d5935e08969"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "arduino-cli"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/arduino-tui", "--version"
  end
end
