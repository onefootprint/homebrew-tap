class FootprintDr < Formula
  desc "Footprint Disaster Recovery CLI"
  homepage "https://docs.onefootprint.com/"

  version = "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/onefootprint/footprint-dr-releases/releases/download/#{version}/footprint-dr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1783cdef3716aa6a37cb07b020431a8dbe8629a1ac713c86c3cdfa75163f491a"

      def install
        bin.install "footprint-dr"
      end
    end
  end
end
