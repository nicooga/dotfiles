if [ -d ~/dotfiles/bin ]                  ; then PATH=~/dotfiles/bin:"${PATH}"                  ; fi
if [ -d ~/dotfiles/local/bin ]            ; then PATH=~/dotfiles/local/bin:"${PATH}"            ; fi
if [ -d ~/.rvm/bin ]                      ; then PATH=~/.rvm/bin:"${PATH}"                      ; fi
if [ -d ~/.luarocks/bin ]                 ; then PATH=~/.luarocks/bin:"${PATH}"                 ; fi
if [ -d /usr/lib/perl5/vendor_perl/bin/ ] ; then PATH=/usr/lib/perl5/vendor_perl/bin/:"${PATH}" ; fi

# android
if [ -d /opt/android-sdk/tools ] ; then
  PATH=/opt/android-sdk/tools:"${PATH}"
fi

if [ -d $ANDROID_NDK ] ; then
  PATH=$PATH:$ANDROID_NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin
fi

# go
if [[ -r /etc/profile.d/go.sh ]] ; then
  source /etc/profile.d/go.sh ;
  export PATH=$PATH:/opt/go/bin
fi

# ant
if [[ -r /usr/share/java/apache-ant/bin ]] ; then
  export PATH=$PATH:/usr/share/java/apache-ant/bin
fi

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"

# /usr/local
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
