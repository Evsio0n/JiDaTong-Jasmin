.bytecode 50.0
.class final synchronized android/support/multidex/MultiDexExtractor$1
.super java/lang/Object
.implements java/io/FileFilter
.enclosing method android/support/multidex/MultiDexExtractor/prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
.inner class static final inner android/support/multidex/MultiDexExtractor$1

.field final synthetic 'val$extractedFilePrefix' Ljava/lang/String;

.method <init>(Ljava/lang/String;)V
aload 0
aload 1
putfield android/support/multidex/MultiDexExtractor$1/val$extractedFilePrefix Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public accept(Ljava/io/File;)Z
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
aload 0
getfield android/support/multidex/MultiDexExtractor$1/val$extractedFilePrefix Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
