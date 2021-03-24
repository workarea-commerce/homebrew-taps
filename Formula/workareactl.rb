class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.2.1"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.2.1/workareactl-1.2.1.tar.gz"
  sha256 "0cdb0a23d6559a08cd231b2f5d797504e42de0d9fa8858a452e8fb359a8d6566"

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

    bin.install "workareactl-1.2.1-#{os}-amd64" => "workareactl"
  end
end
