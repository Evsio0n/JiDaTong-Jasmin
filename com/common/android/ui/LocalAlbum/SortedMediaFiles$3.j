.bytecode 50.0
.class final synchronized com/common/android/ui/LocalAlbum/SortedMediaFiles$3
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"
.enclosing method com/common/android/ui/LocalAlbum/SortedMediaFiles
.inner class static final inner com/common/android/ui/LocalAlbum/SortedMediaFiles$3

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
new com/common/android/ui/LocalAlbum/SortedMediaFiles
dup
aload 1
aconst_null
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles/<init>(Landroid/os/Parcel;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles$1;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles$3/createFromParcel(Landroid/os/Parcel;)Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
iload 1
anewarray com/common/android/ui/LocalAlbum/SortedMediaFiles
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles$3/newArray(I)[Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
areturn
.limit locals 2
.limit stack 2
.end method
