.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/FileInfo
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner com/common/android/ui/LocalAlbum/FileInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"

.field private static final 'DEFAULT_ID' J = -2424L


.field public 'mFilePathOrName' Ljava/lang/String;

.field public 'mID' J

.field public 'mLastModified' J

.method static <clinit>()V
new com/common/android/ui/LocalAlbum/FileInfo$1
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo$1/<init>()V
putstatic com/common/android/ui/LocalAlbum/FileInfo/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -2424L
putfield com/common/android/ui/LocalAlbum/FileInfo/mID J
aload 0
ldc ""
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/common/android/ui/LocalAlbum/FileInfo/mID J
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/common/android/ui/LocalAlbum/FileInfo$1;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDefaultID()J
ldc2_w -2424L
lreturn
.limit locals 1
.limit stack 2
.end method

.method public lastModifiedCmp(Lcom/common/android/ui/LocalAlbum/FileInfo;)I
aload 0
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 1
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
lcmp
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
aload 1
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
lcmp
ifle L1
iconst_m1
ireturn
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/FileInfo/mID J
invokevirtual android/os/Parcel/writeLong(J)V
return
.limit locals 3
.limit stack 3
.end method
