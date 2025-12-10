class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-arm64.tar.gz"
      sha256 "93e788e572b12e774b0a949ab673891c5245ed446315ae16beed9df4409a6f03"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-x64.tar.gz"
      sha256 "8cc0f2ce7ed63307da53ca4e72c5dba98c366397d802d8f2c580671c723ecda1"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
