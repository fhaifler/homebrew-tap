# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "Hello World CLI"
  homepage "https://github.com/fhaifler/hello"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.0/hello_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3fd21cfaa4082c31c5dbd68e3c03bb7c116cb36d91ef1907b9bbc1cbf5f4e215"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.0/hello_v0.1.0_darwin_amd64.tar.gz"
      sha256 "8a5445d5cc4104ab600068b4ed051a6c4bf82dfbf9191f79a9b499958784c30e"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.0/hello_v0.1.0_linux_amd64.tar.gz"
      sha256 "610915f34a36b6ca85598cde8b7c9aa17e44213f1502ed21c489b13b1a8543c8"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhaifler/hello/releases/download/v0.1.0/hello_v0.1.0_linux_arm64.tar.gz"
      sha256 "07a1e5cc262e924482c627555fda19607a75a180010a1767877d750030c65969"

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
