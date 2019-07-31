.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/VerifyObject
.implements android/os/Parcelable
.inner class inner com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;>;"

.field private 'mPackageMd5' Ljava/lang/String;

.field private 'mPackageSize' I

.field private 'mPackageUrl' Ljava/lang/String;

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo$1
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo$1/<init>()V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
aload 0
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageUrl()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageMd5()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageSize()I
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
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

.method public getPackageMd5()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPackageSize()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPackageUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
iconst_1
istore 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
iconst_1
if_icmpge L1
L0:
iconst_0
istore 1
L1:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setPackageMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPackageSize(I)V
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setPackageUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageMd5 Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/mPackageSize I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 2
.end method
