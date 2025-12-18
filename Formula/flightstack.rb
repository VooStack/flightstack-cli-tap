class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.30/flightstack-1.2.30-macos-arm64.tar.gz"
      sha256 "d6bf67701d8d5aea43391f9f14c18e5e93e402f835d9a03b34bcca7b84a65aa7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.30/flightstack-1.2.30-macos-x64.tar.gz"
      sha256 "0c00920938adfc2e9ebdfb7b5f4681e4744dc9c69c0ab283348b0a93e3385274"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
