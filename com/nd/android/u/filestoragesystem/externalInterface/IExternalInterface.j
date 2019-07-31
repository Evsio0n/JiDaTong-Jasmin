.bytecode 50.0
.class public abstract interface com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface
.super java/lang/Object

.method public abstract deletePhotos(Landroid/content/Context;ILjava/lang/String;JLjava/util/ArrayList;)Z
.signature "(Landroid/content/Context;ILjava/lang/String;JLjava/util/ArrayList<Ljava/lang/Long;>;)Z"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getAllMxAlbums(Landroid/content/Context;ILjava/lang/String;JI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getFileList(Landroid/content/Context;ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJLjava/lang/String;JJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getMovieFileList(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getMxAlbums(Landroid/content/Context;ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JIJJLjava/lang/String;I)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFolder;>;"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getPersonalPhotoList(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;ILjava/lang/String;JJJI)Ljava/util/ArrayList<Lcom/nd/android/u/filestoragesystem/externalInterface/IFile;>;"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract upload(Landroid/content/Context;Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J
.throws com/common/android/utils/http/HttpException
.end method
