# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awl < Formula
  desc "A DNS query tool"
  homepage "https://dns.froth.zone/awl"
  version "0.6.10"
  license "BSD-3-Clause"

  on_macos do
    url "https://git.froth.zone/sam/awl/releases/download/v0.6.10/awl_MacOS_all.tar.gz"
    sha256 "517c23700cb25a51dd4b149401c9418d18a56658e4d871f5a27e4ba2a7b4a0fe"

    def install
      bin.install "awl"
      bash_completion.install "completions/bash.bash" => "awl"
      zsh_completion.install "completions/zsh.zsh" => "_awl"
      fish_completion.install "completions/fish.fish" => "awl.fish"
      man1.install "doc/awl.1.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.10/awl_Linux_arm.tar.gz"
      sha256 "d489cac34cb0d60517dc88c4651e6662090b74df4511ffe2c10db44f8578e944"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.10/awl_Linux_arm64.tar.gz"
      sha256 "ba01206fd54c4331a050f5cf20d0fa5321237135a3953d89f9fd9f972085ef19"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.10/awl_Linux_amd64.tar.gz"
      sha256 "d0b49c7996df1754f58a85517b8e612c58f22c02f57c91dfdf18a9dc9ee8d358"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
  end
end
