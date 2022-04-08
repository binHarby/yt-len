# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Abdulla Alameri <binharby1@gmail.com>
pkgname=yt-len
pkgver=0.01
pkgrel=1
pkgdesc="Simple Python program, get video/playlist length and titles"
arch=('x86_64' 'i686' 'armv7h' 'armv6h' 'aarch64')
url="https://github.com/binHarby/yt-len"
license=('GPL')
depends=()
makedepends=(git)
provides=(yt-len)
conflicts=(yt-len)
source=(git+$url)
md5sums=('SKIP')

prepare() {
	if [ -e "$srcdir/$pkgname-$pkgver" ]
	then
		rm -r "$srcdir/$pkgname-$pkgver"
	fi
	if [ -e "$srcdir/python-pytube" ]
	then
		continue
	else
		cd $srcdir
		git clone https://aur.archlinux.org/python-pytube
	fi
	cd python-pytube
	makepkg -si --asdeps 
	cd $srcdir 
	rm -rf python-pytube
	mkdir "$srcdir/$pkgname-$pkgver" 
	mv "$srcdir/yt-len/yt-len" "$srcdir/$pkgname-$pkgver"
}

build() {
	cd "$pkgname-$pkgver"
	mkdir -p usr/bin
	chmod +x yt-len
	mv yt-len usr/bin/yt-len
}


package() {
	cd "$srcdir/$pkgname-$pkgver"
	mv usr "$pkgdir/"
}
