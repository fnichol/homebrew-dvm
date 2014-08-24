require 'formula'

class Dvm < Formula
  homepage 'http://fnichol.github.io/dvm'
  url 'https://github.com/fnichol/dvm/archive/v0.9.0.tar.gz'
  sha1 '74b815c5a129e171e99984b75a47e81e3b1b41ca'

  head 'https://github.com/fnichol/dvm.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Quickstart:

        dvm up
        eval $(dvm env)
        docker images

    If you will only be using Docker with dvm, consider adding the following
    to your ~/.bash_profile or ~/.bashrc to always have DOCKER_HOST properly
    set:

        eval "$(dvm env)"

    EOS
  end
end
