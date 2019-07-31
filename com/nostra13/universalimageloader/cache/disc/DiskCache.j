.bytecode 50.0
.class public abstract interface com/nostra13/universalimageloader/cache/disc/DiskCache
.super java/lang/Object

.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDirectory()Ljava/io/File;
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.throws java/io/IOException
.end method

.method public abstract save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
.throws java/io/IOException
.end method

.method public abstract save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
.throws java/io/IOException
.end method
