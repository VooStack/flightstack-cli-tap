class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.62/flightstack-1.2.62-macos-arm64.tar.gz"
      sha256 "fcbb4ee786bdd68fd974bba88d415f39856c25dd7e06ad5fc4516a9663d97b18"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.62/flightstack-1.2.62-macos-x64.tar.gz"
      sha256 "878dc357a2b7ae1aa47d5e785e13c2b3e83404c48dc76a0386e0db2dea3d437e"
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
