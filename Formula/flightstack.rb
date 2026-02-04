class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.1/flightstack-1.3.1-macos-arm64.tar.gz"
      sha256 "bfa85a1a8e95255870a56576ad1caa11917bff39a946b7f1fd9e8a88feeb3055"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.1/flightstack-1.3.1-macos-x64.tar.gz"
      sha256 "abe0a42bbd01d9a325ba6b67db67d87af09a83338bb2dab9f9b503354cfa2ef5"
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
