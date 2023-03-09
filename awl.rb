# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awl < Formula
  desc "A DNS query tool"
  homepage "https://dns.froth.zone/awl"
  version "0.6.6"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.6/awl_MacOS_arm64.tar.gz"
      sha256 "c9fc27393870642d543eb8a5f0c6f3435e5d1f898f8821eab9c07323dc4b9aa0"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.6/awl_MacOS_amd64.tar.gz"
      sha256 "41844f72669da60e4173e91f2b1f50a0a0fbf90c1415e9b08fb6028782ff98ec"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.6/awl_Linux_arm.tar.gz"
      sha256 "4c802e9009a59de611ced7c80db36d75bc7af7ee3de59b7059d3a0e011d0dfa6"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.6/awl_Linux_arm64.tar.gz"
      sha256 "2b29fac9418103e9214020a56474e77018618c5b61607f20cabc9a672cd2debf"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "doc/awl.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.6/awl_Linux_amd64.tar.gz"
      sha256 "22cd617c79decad7c85a38cf78073fbb1b45003721da0687dd381167cf162c4f"

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
