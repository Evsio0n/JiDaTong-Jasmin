.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/SortedMediaFiles
.super java/lang/Object
.implements android/os/Parcelable
.inner class inner com/common/android/ui/LocalAlbum/SortedMediaFiles$1
.inner class inner com/common/android/ui/LocalAlbum/SortedMediaFiles$2
.inner class static final inner com/common/android/ui/LocalAlbum/SortedMediaFiles$3

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"

.field public 'mDirInfo' Lcom/common/android/ui/LocalAlbum/FileInfo;

.field private 'mFiles' Ljava/util/PriorityQueue; signature "Ljava/util/PriorityQueue<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"

.method static <clinit>()V
new com/common/android/ui/LocalAlbum/SortedMediaFiles$3
dup
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles$3/<init>()V
putstatic com/common/android/ui/LocalAlbum/SortedMediaFiles/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/PriorityQueue
dup
bipush 11
new com/common/android/ui/LocalAlbum/SortedMediaFiles$1
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles$1/<init>(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
invokespecial java/util/PriorityQueue/<init>(ILjava/util/Comparator;)V
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
return
.limit locals 1
.limit stack 7
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
ldc com/common/android/ui/LocalAlbum/FileInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/common/android/ui/LocalAlbum/FileInfo
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 0
new java/util/PriorityQueue
dup
bipush 11
new com/common/android/ui/LocalAlbum/SortedMediaFiles$2
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles$2/<init>(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
invokespecial java/util/PriorityQueue/<init>(ILjava/util/Comparator;)V
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
aload 1
invokevirtual android/os/Parcel/readInt()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
aload 1
ldc com/common/android/ui/LocalAlbum/FileInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/common/android/ui/LocalAlbum/FileInfo
checkcast com/common/android/ui/LocalAlbum/FileInfo
invokevirtual java/util/PriorityQueue/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 4
.limit stack 7
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles$1;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public addFile(Lcom/common/android/ui/LocalAlbum/FileInfo;)V
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
aload 1
invokevirtual java/util/PriorityQueue/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDirName()Ljava/lang/String;
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
ifnonnull L0
ldc ""
areturn
L0:
new java/lang/String
dup
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
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

.method public getFilesCount()I
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFilesList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 1
L0:
aload 1
ifnull L1
aload 2
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 1
goto L0
L1:
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
aload 3
invokevirtual java/util/PriorityQueue/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getFirstFile()Lcom/common/android/ui/LocalAlbum/FileInfo;
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/peek()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 2
aload 2
astore 1
aload 2
ifnonnull L1
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public isFilesEmpty()Z
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/isEmpty()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isInCameraPath()Z
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
ifnonnull L0
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/DCIM"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isTheCameraPath()Z
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
ifnonnull L0
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/DCIM/Camera"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeFile(Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/isEmpty()Z
ifeq L0
L1:
return
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 2
L2:
aload 2
ifnull L3
aload 2
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L4
aload 3
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
invokevirtual java/util/PriorityQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 2
goto L2
L3:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 2
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mFiles Ljava/util/PriorityQueue;
aload 2
invokevirtual java/util/PriorityQueue/add(Ljava/lang/Object;)Z
pop
goto L5
.limit locals 4
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesList()Ljava/util/ArrayList;
astore 3
aload 3
ifnull L0
aload 1
aload 3
invokeinterface java/util/List/size()I 0
invokevirtual android/os/Parcel/writeInt(I)V
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
goto L1
L0:
aload 1
iconst_0
invokevirtual android/os/Parcel/writeInt(I)V
L2:
return
.limit locals 4
.limit stack 3
.end method
