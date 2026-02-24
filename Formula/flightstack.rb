class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-arm64.tar.gz"
      sha256 "2cd90d606462528702a22db3deebe4c2b15b403052127dc0a93a9d547bf505dd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-x64.tar.gz"
      sha256 "0a59fdedb95c456ce574a2c76de58472c20c10b33eb415ec8bb9d4613d61561a"
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
