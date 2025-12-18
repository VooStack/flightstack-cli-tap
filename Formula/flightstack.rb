class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.25/flightstack-1.2.25-macos-arm64.tar.gz"
      sha256 "19c4020f3976bdd3b74d8983fd10dc4fe08fb9dd5b3d80522928e42cf3ff61d4"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.25/flightstack-1.2.25-macos-x64.tar.gz"
      sha256 "c2f087a3f1e896505cc4bbaecee3cd070025a51ed6efb56a1e6beaae61b299e4"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
