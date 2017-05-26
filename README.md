# STAR-Load

[STAR-Load](http://marvel.com/universe/Star-Lord_%28Peter_Quill%29) is a wrapper script for [STAR](https://github.com/alexdobin/STAR), to execute via [cwltool](https://github.com/common-workflow-language/cwltool) with option *--genomeLoad LoadandKeep*. The problem is described [here](https://github.com/common-workflow-language/cwltool/issues/367).

## RSEM-Load

`RSEM-Load` is a script to run RSEM with STAR using shared memory via cwltool. The default setting of STAR inside RSEM does not use option *--genomeLoad LoadandKeep*, so you need to fix it as I did (https://github.com/inutano/RSEM).