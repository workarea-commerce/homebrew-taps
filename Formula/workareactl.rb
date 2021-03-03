class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.1.1"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.1.1/workareactl-1.1.1.tar.gz"
  sha256 "d9b5d5a5dc2a61aacdf396c9bd8fd5af66ffce98bd1912ded9cfa0eef0fa36b4"

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

    bin.install "workareactl-1.1.1-#{os}-amd64" => "workareactl"
  end
end
