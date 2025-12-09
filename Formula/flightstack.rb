class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.9/flightstack-1.2.9-macos-arm64.tar.gz"
      sha256 "8feb4c5493f5d6618aadd8bb694ad9f7469d13c78ffee9c38d88e41b0c84ef93"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.9/flightstack-1.2.9-macos-x64.tar.gz"
      sha256 "c1785b9a846e15fde138ae2bc9848241ce39371c121683828fb6dafbb160ebf3"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
