class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.36/flightstack-1.2.36-macos-arm64.tar.gz"
      sha256 "1be7e086ffafeb3101e1526f044827de7429501b4de445f069c01bff51049078"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.36/flightstack-1.2.36-macos-x64.tar.gz"
      sha256 "d724864e958d993a0604bbc794f30aef4590ae617edc55f488e13a8fcad85e81"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
