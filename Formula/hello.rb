# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "Hello World CLI"
  homepage "https://github.com/fhaifler/hello"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.2/hello_v0.1.2_darwin_arm64.tar.gz"
      sha256 "965ff702087fad2f514adc12518a9b40688c4913d83b39d10716a4d0a99adecd"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.2/hello_v0.1.2_darwin_amd64.tar.gz"
      sha256 "afa5e9f6cdca2f785fc8838413dd4612e58d65e647e7f3c981dbc5b0a7324201"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.2/hello_v0.1.2_linux_amd64.tar.gz"
      sha256 "966716ab3408817ec0fa8b35d815935aaae5f6964a23ce62e5c66f9ce78e6a61"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.2/hello_v0.1.2_linux_arm64.tar.gz"
      sha256 "550124347b8a0148e83d5b661aae3ee0a12ebffab35b7e0c3362d9e3a17bbaec"

      def install
        bin.install "hello"
      end
    end
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/fhaifler/hello
  EOS
  end

  test do
    system "#{bin}/hello version"
  end
end
