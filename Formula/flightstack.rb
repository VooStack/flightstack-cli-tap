class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.48/flightstack-1.2.48-macos-arm64.tar.gz"
      sha256 "59ff4474e8c6f3e16972e2718d7b8ae4940d1d32002a85dd63dffe77655fb7ec"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.48/flightstack-1.2.48-macos-x64.tar.gz"
      sha256 "56d46c95538ab09a0645fe321472f905220691b914e15a7559331ed36eaca2f8"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
