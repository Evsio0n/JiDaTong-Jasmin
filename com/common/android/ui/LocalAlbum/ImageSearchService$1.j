.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/ImageSearchService$1
.super java/lang/Object
.implements java/io/FileFilter
.enclosing method com/common/android/ui/LocalAlbum/ImageSearchService/traversal1([Ljava/lang/String;I)V
.inner class inner com/common/android/ui/LocalAlbum/ImageSearchService$1

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/ImageSearchService;

.field final synthetic 'val$files' Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;

.field final synthetic 'val$photo' Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;

.method <init>(Lcom/common/android/ui/LocalAlbum/ImageSearchService;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/ImageSearchService$1/this$0 Lcom/common/android/ui/LocalAlbum/ImageSearchService;
aload 0
aload 2
putfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$files Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
aload 0
aload 3
putfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$photo Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public accept(Ljava/io/File;)Z
aload 1
invokevirtual java/io/File/isDirectory()Z
ifeq L0
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 2
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 3
aload 3
aload 2
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 3
aload 1
invokevirtual java/io/File/lastModified()J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$files Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
aload 3
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/addFile(Lcom/common/android/ui/LocalAlbum/FileInfo;)V
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 2
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/this$0 Lcom/common/android/ui/LocalAlbum/ImageSearchService;
aload 3
invokestatic com/common/android/ui/LocalAlbum/ImageSearchService/access$000(Lcom/common/android/ui/LocalAlbum/ImageSearchService;Ljava/lang/String;)Z
ifeq L1
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$photo Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 3
aload 1
invokevirtual java/io/File/lastModified()J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$photo Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 3
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$photo Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
invokestatic java/lang/Math/max(JJ)J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService$1/val$photo Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;
aload 3
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/addFile(Lcom/common/android/ui/LocalAlbum/FileInfo;)V
iconst_0
ireturn
.limit locals 4
.limit stack 5
.end method
