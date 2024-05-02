# patches/lfs/development/*.patch 可能没有及时更新
p_url="https://www.linuxfromscratch.org/patches/downloads"
src_dir=$(grep '^SRC_ARCHIVE=' alfs/configuration|sed 's/.*=\|"//g')
wget -nv -P $src_dir \
	$p_url/glibc/glibc-2.39-upstream_fix-2.patch
