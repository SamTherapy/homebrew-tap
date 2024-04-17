# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awl < Formula
  desc "A DNS query tool"
  homepage "https://dns.froth.zone/awl"
  version "0.6.12"
  license "BSD-3-Clause"

  on_macos do
    url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_MacOS_all.tar.gz"
    sha256 "d424226586347a3702380eb891df6d6068156335f5107a9f63a29a78e406e712"

    def install
      bin.install "awl"
      bash_completion.install "completions/bash.bash" => "awl"
      zsh_completion.install "completions/zsh.zsh" => "_awl"
      fish_completion.install "completions/fish.fish" => "awl.fish"
      man1.install "docs/awl.1.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_Linux_arm64.tar.gz"
      sha256 "5a80b6af0659f8f9212f94063702c5a2e5d9e4226936e9003819d212814cea4a"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "docs/awl.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_Linux_amd64.tar.gz"
      sha256 "6e81f67a9c4d28e5a7847bb888594439788e3053e2f11b87659f70cf1ad04820"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "docs/awl.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_Linux_arm.tar.gz"
      sha256 "9c670bd083fee8f3f20f3e689f64b9e12fb6dbb52686e2e40fe961614e24ebb1"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "docs/awl.1.gz"
      end
    end
  end
end
