class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.2.0"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.2.0/workareactl-1.2.0.tar.gz"
  sha256 "8daa8b0486a7d05cc9c9e24f05f21c07d9ede1990fa20741ec8ec3ed121f237a"

  bottle :unneeded

  def install
    host_os = RbConfig::CONFIG["host_os"]
    os =
      if (/darwin/ =~ host_os) != nil
        "darwin"
      elsif (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ host_os) != nil
        "windows"
      elsif (/linux/ =~ host_os) != nil
        "linux"
      else
        abort("unkown os. only darwin, linux and windows are supported")
      end

    bin.install "workareactl-1.2.0-#{os}-amd64" => "workareactl"
  end
end
