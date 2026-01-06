class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.46/flightstack-1.2.46-macos-arm64.tar.gz"
      sha256 "fc74a1d2e93bae86815a73b5259d6a14eb457cfd85388392a4c7f5d19dddbc28"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.46/flightstack-1.2.46-macos-x64.tar.gz"
      sha256 "bc5b5d041c5ccb6520235fd46f4b1c14c61fa177e6ad9a94af264913ad353418"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
