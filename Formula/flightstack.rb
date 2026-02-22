class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-arm64.tar.gz"
      sha256 "52f25dae8f209cc3d417cb7cb7285d317c1b41802f6e5cba0956446b613d67b2"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-x64.tar.gz"
      sha256 "9deca238b6d652ea99bb0738d3a685789045841836afa312723778a8e6f4db40"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
