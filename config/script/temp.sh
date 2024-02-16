# multilib 没有及时更新glibc版本
sed -i.ori 's/patch -Np1 -i ..\/\&glibc-upstream-fixes-patch;//' repo/chapter08/glibc.xml
sed -i.ori 's/patch -Np1 -i ..\/\&pkgconf-upstream-fix-patch;//' repo/chapter08/pkgconf.xml
for i in repo/chapter08/{glibc,pkgconf}.xml; do
	if diff -u $i{.ori,} > /dev/null; then
		mv -f $i{.ori,}
	fi
done
