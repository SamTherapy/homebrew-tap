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
    sha256 "c7ccf47fa428c267f4d55129a2256fee73022cb48a80e5581b10e11ef1a8e27b"

    def install
      bin.install "awl"
      bash_completion.install "completions/bash.bash" => "awl"
      zsh_completion.install "completions/zsh.zsh" => "_awl"
      fish_completion.install "completions/fish.fish" => "awl.fish"
      man1.install "docs/awl.1.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_Linux_arm.tar.gz"
      sha256 "a0aa7dccd134cb6280ff95e6646dc9dbf45b8f8b658ef033e87d91a2e482c1f4"

      def install
        bin.install "awl"
        bash_completion.install "completions/bash.bash" => "awl"
        zsh_completion.install "completions/zsh.zsh" => "_awl"
        fish_completion.install "completions/fish.fish" => "awl.fish"
        man1.install "docs/awl.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://git.froth.zone/sam/awl/releases/download/v0.6.12/awl_Linux_arm64.tar.gz"
      sha256 "7ab9f176ddab41cc88876d52f811e5bf0397a9be07cd6eec8777d8545c99a063"

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
      sha256 "46a49a8f7463f23e4d470d3d24798246abebb34792d0d6740a81de79197eea61"

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
