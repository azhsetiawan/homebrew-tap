class Ledzeplin < Formula
  desc "Zeplin multi account switcher"
  homepage "https://github.com/azhsetiawan/ledzeplin"
  url "https://github.com/azhsetiawan/ledzeplin/releases/download/v0.1.2/ledzeplin.tar.gz"
  sha256 "c970319be33de5c59c130224e601a67032e77eca6328f279aeddbbacdf8e1b39"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "ledzeplin"
    libexec.install "blackdog.scpt"
    bash_completion.install "completion/ledzeplin.bash" => "ledzeplin"
    zsh_completion.install  "completion/ledzeplin.zsh"  => "_ledzeplin"
  end

  test do
    system "#{bin}/ledzeplin", "help"
  end
end