.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;>;"

.field public 'code' Ljava/lang/String;

.field public 'name' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo$1
dup
invokespecial com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo$1/<init>()V
putstatic com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
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

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method
