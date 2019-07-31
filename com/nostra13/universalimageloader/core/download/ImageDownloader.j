.bytecode 50.0
.class public abstract interface com/nostra13/universalimageloader/core/download/ImageDownloader
.super java/lang/Object
.inner class public static final enum Scheme inner com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme outer com/nostra13/universalimageloader/core/download/ImageDownloader

.method public abstract getDownloadSize(Ljava/lang/String;)J
.end method

.method public abstract getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
.end method

.method public abstract getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream;
.signature "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
.throws java/io/IOException
.end method

.method public abstract getTotalSize(Ljava/lang/String;)J
.end method

.method public abstract isWriteLog()Z
.end method

.method public abstract removeEtag(Ljava/lang/String;)V
.end method

.method public abstract removeSizeMap(Ljava/lang/String;)V
.end method

.method public abstract setDownloadSize(Ljava/lang/String;J)V
.end method

.method public abstract setTotalSize(Ljava/lang/String;J)V
.end method

.method public abstract setWriteLog(Z)V
.end method
