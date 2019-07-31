.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/file/FileToStreamDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TT;>;"
.inner class static FileOpener inner com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener outer com/bumptech/glide/load/resource/file/FileToStreamDecoder

.field private static final 'DEFAULT_FILE_OPENER' Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private final 'fileOpener' Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private 'streamDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener
dup
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener/<init>()V
putstatic com/bumptech/glide/load/resource/file/FileToStreamDecoder/DEFAULT_FILE_OPENER Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;)V"
aload 0
aload 1
getstatic com/bumptech/glide/load/resource/file/FileToStreamDecoder/DEFAULT_FILE_OPENER Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
invokespecial com/bumptech/glide/load/resource/file/FileToStreamDecoder/<init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
return
.limit locals 2
.limit stack 3
.end method

.method <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/file/FileToStreamDecoder/streamDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/file/FileToStreamDecoder/fileOpener Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
return
.limit locals 3
.limit stack 2
.end method

.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L7
.catch java/io/IOException from L8 to L9 using L10
aconst_null
astore 4
L0:
aload 0
getfield com/bumptech/glide/load/resource/file/FileToStreamDecoder/fileOpener Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
aload 1
invokevirtual com/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener/open(Ljava/io/File;)Ljava/io/InputStream;
astore 1
L1:
aload 1
astore 4
L3:
aload 0
getfield com/bumptech/glide/load/resource/file/FileToStreamDecoder/streamDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
L4:
aload 1
ifnull L6
L5:
aload 1
invokevirtual java/io/InputStream/close()V
L6:
aload 5
areturn
L2:
astore 1
aload 4
ifnull L9
L8:
aload 4
invokevirtual java/io/InputStream/close()V
L9:
aload 1
athrow
L7:
astore 1
aload 5
areturn
L10:
astore 4
goto L9
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.throws java/io/IOException
aload 0
aload 1
checkcast java/io/File
iload 2
iload 3
invokevirtual com/bumptech/glide/load/resource/file/FileToStreamDecoder/decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
