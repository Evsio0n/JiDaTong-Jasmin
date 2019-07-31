.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/ImageSearchService
.super android/app/IntentService
.inner class inner com/common/android/ui/LocalAlbum/ImageSearchService$1

.field final 'm_photoSuffixes' [Ljava/lang/String;

.method public <init>()V
aload 0
ldc "FileSearch"
invokespecial android/app/IntentService/<init>(Ljava/lang/String;)V
aload 0
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc ".png"
aastore
dup
iconst_1
ldc ".jpg"
aastore
dup
iconst_2
ldc ".gif"
aastore
dup
iconst_3
ldc ".bmp"
aastore
dup
iconst_4
ldc ".jpeg"
aastore
putfield com/common/android/ui/LocalAlbum/ImageSearchService/m_photoSuffixes [Ljava/lang/String;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$000(Lcom/common/android/ui/LocalAlbum/ImageSearchService;Ljava/lang/String;)Z
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/isImage(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isImage(Ljava/lang/String;)Z
iconst_0
istore 5
aload 0
getfield com/common/android/ui/LocalAlbum/ImageSearchService/m_photoSuffixes [Ljava/lang/String;
astore 6
aload 6
arraylength
istore 3
iconst_0
istore 2
L0:
iload 5
istore 4
iload 2
iload 3
if_icmpge L1
aload 1
aload 6
iload 2
aaload
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L2
iconst_1
istore 4
L1:
iload 4
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 7
.limit stack 3
.end method

.method private startTraversal(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 0
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
iconst_0
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/traversal1([Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 5
.end method

.method private traversal1([Ljava/lang/String;I)V
iload 2
iconst_1
iadd
istore 3
aload 1
arraylength
istore 4
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
aload 1
iload 2
aaload
astore 5
new java/io/File
dup
aload 5
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/isDirectory()Z
ifeq L2
aload 0
aload 5
invokevirtual com/common/android/ui/LocalAlbum/ImageSearchService/getDirName(Ljava/lang/String;)Ljava/lang/String;
ldc "."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L3
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L3:
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 7
aload 7
aload 6
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 7
aload 6
invokevirtual java/io/File/lastModified()J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
new com/common/android/ui/LocalAlbum/SortedMediaFiles
dup
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles/<init>()V
astore 8
new com/common/android/ui/LocalAlbum/SortedMediaFiles
dup
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles/<init>()V
astore 5
aload 8
aload 7
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 5
aload 7
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 6
new com/common/android/ui/LocalAlbum/ImageSearchService$1
dup
aload 0
aload 5
aload 8
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService$1/<init>(Lcom/common/android/ui/LocalAlbum/ImageSearchService;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
invokevirtual java/io/File/listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
pop
aload 8
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/isFilesEmpty()Z
ifne L4
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
aload 8
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/addMediaFile(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
L4:
aload 5
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesList()Ljava/util/ArrayList;
astore 8
aload 8
ifnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 8
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L5:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 9
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
ldc "."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L5
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
ldc "face"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L5
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
ldc "cover"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L5
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
ldc "show"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
aload 10
ldc "DCIM"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 6
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L5
L7:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L5
L6:
aload 6
aload 7
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 6
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmplt L2
iload 3
iconst_3
if_icmpge L8
aload 0
aload 6
aload 6
invokevirtual java/util/ArrayList/size()I
anewarray java/lang/String
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
checkcast [Ljava/lang/String;
iload 3
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/traversal1([Ljava/lang/String;I)V
L8:
aload 7
invokevirtual java/util/ArrayList/clear()V
aload 6
invokevirtual java/util/ArrayList/clear()V
goto L2
L1:
return
.limit locals 11
.limit stack 6
.end method

.method public getDirName(Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnonnull L0
ldc ""
areturn
L0:
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 2
aload 2
astore 1
aload 2
ldc "/"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L1
aload 2
iconst_0
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L1:
aload 1
aload 1
bipush 47
invokevirtual java/lang/String/lastIndexOf(I)I
iconst_1
iadd
aload 1
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L4
.catch java/lang/NoSuchMethodException from L0 to L1 using L5
.catch java/lang/IllegalArgumentException from L6 to L7 using L2
.catch java/lang/IllegalAccessException from L6 to L7 using L3
.catch java/lang/reflect/InvocationTargetException from L6 to L7 using L4
.catch java/lang/NoSuchMethodException from L6 to L7 using L5
.catch java/lang/IllegalArgumentException from L8 to L9 using L2
.catch java/lang/IllegalAccessException from L8 to L9 using L3
.catch java/lang/reflect/InvocationTargetException from L8 to L9 using L4
.catch java/lang/NoSuchMethodException from L8 to L9 using L5
.catch java/lang/IllegalArgumentException from L10 to L11 using L2
.catch java/lang/IllegalAccessException from L10 to L11 using L3
.catch java/lang/reflect/InvocationTargetException from L10 to L11 using L4
.catch java/lang/NoSuchMethodException from L10 to L11 using L5
.catch java/lang/IllegalArgumentException from L11 to L12 using L2
.catch java/lang/IllegalAccessException from L11 to L12 using L3
.catch java/lang/reflect/InvocationTargetException from L11 to L12 using L4
.catch java/lang/NoSuchMethodException from L11 to L12 using L5
.catch java/lang/IllegalArgumentException from L13 to L14 using L2
.catch java/lang/IllegalAccessException from L13 to L14 using L3
.catch java/lang/reflect/InvocationTargetException from L13 to L14 using L4
.catch java/lang/NoSuchMethodException from L13 to L14 using L5
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/clearLocalMedia()V
aload 0
ldc "storage"
invokevirtual com/common/android/ui/LocalAlbum/ImageSearchService/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/os/storage/StorageManager
astore 1
L0:
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
bipush 11
if_icmplt L13
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "getVolumePaths"
aconst_null
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 1
aconst_null
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/String;
checkcast [Ljava/lang/String;
astore 1
L1:
aload 1
ifnull L10
L6:
aload 1
arraylength
iconst_1
isub
istore 2
L7:
iload 2
iflt L11
L8:
aload 0
aload 1
iload 2
aaload
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/startTraversal(Ljava/lang/String;)V
L9:
iload 2
iconst_1
isub
istore 2
goto L7
L10:
aload 0
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/startTraversal(Ljava/lang/String;)V
L11:
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/notifyObservers()V
L12:
return
L13:
aload 0
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial com/common/android/ui/LocalAlbum/ImageSearchService/startTraversal(Ljava/lang/String;)V
L14:
goto L11
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
return
L3:
astore 1
aload 1
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
return
L4:
astore 1
aload 1
invokevirtual java/lang/reflect/InvocationTargetException/printStackTrace()V
return
L5:
astore 1
aload 1
invokevirtual java/lang/NoSuchMethodException/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method
