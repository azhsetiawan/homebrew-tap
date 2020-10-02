class Ledzeplin < Formula
  desc "Zeplin multi account switcher"
  homepage "https://github.com/azhsetiawan/ledzeplin"
  url "https://github.com/azhsetiawan/ledzeplin/releases/download/v0.1.1/ledzeplin.tar.gz"
  sha256 "b62854b60380a777e86c1b29a5f02009cb9fb1c0c054a851b3215aa094dfb8b9"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "ledzeplin"
    bin.install "blackdog.scpt"
    bash_completion.install "completion/ledzeplin.bash" => "ledzeplin"
    zsh_completion.install  "completion/ledzeplin.zsh"  => "_ledzeplin"
  end

  test do
    system "#{bin}/ledzeplin", "help"
  end
end