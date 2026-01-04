class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.44/flightstack-1.2.44-macos-arm64.tar.gz"
      sha256 "97dbb4122fec538f5b36906818c7a2ad57bdf42f9f3cff0a825cee226e35a9e3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.44/flightstack-1.2.44-macos-x64.tar.gz"
      sha256 "c0c0acd95384e1b083b182af19a2e25bcae675238c2f17d870c0f1442b6a6573"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
