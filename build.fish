#!/usr/bin/env fish
set stage "stage"
set prefix "/usr/local"
mkdir -p $stage
set mandir "share/man"
rm $stage/plist
for txt in *.txt
	set parts (string split . $txt)
	set name $parts[1]
	set section $parts[2]
	set subdir "$mandir/man$section"
	set outfile "$subdir/$name.$section.gz"
	mkdir -p "$stage/$prefix/$subdir"
	scdoc < $txt | gzip > "$stage/$prefix/$outfile"
	echo $outfile >> "$stage/plist"
end

pkg create -r$stage -MMANIFEST -p$stage/plist
