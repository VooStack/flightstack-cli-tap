class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.12/flightstack-1.2.12-macos-arm64.tar.gz"
      sha256 "a603258491c8253f6368ed2a0b029ab9cb8ea70ec6076501285aca14c6b40b0b"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.12/flightstack-1.2.12-macos-x64.tar.gz"
      sha256 "c02b7b24910afac519d23ca5ed1b03608e031e4b2fdaa68af2a0acb7b6e14c15"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
