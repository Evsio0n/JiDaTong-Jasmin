.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalImageController$1
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"
.enclosing method com/common/android/ui/LocalAlbum/LocalImageController/<init>()V
.inner class inner com/common/android/ui/LocalAlbum/LocalImageController$1

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalImageController;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalImageController;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalImageController$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalImageController;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public compare(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)I
aload 1
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 2
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
invokevirtual com/common/android/ui/LocalAlbum/FileInfo/lastModifiedCmp(Lcom/common/android/ui/LocalAlbum/FileInfo;)I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
aload 2
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController$1/compare(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)I
ireturn
.limit locals 3
.limit stack 3
.end method
