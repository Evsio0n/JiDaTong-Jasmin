.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/VerifyObject
.implements android/os/Parcelable
.inner class inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;>;"

.field private 'mFullPackageInfo' Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;

.field private 'mIncrementalPackageInfo' Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;

.field private 'mIsBeta' Z

.field private 'mIsForce' Z

.field private 'mNewestVersionCode' I

.field private 'mNewestVersionHistory' Ljava/lang/String;

.field private 'mNewestVersionName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1/<init>()V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
return
.limit locals 1
.limit stack 2
.end method

.method private <init>(Landroid/os/Parcel;)V
iconst_0
istore 3
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionHistory Ljava/lang/String;
aload 1
invokevirtual android/os/Parcel/readByte()B
ifne L0
iconst_0
istore 2
L1:
aload 0
iload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
aload 1
invokevirtual android/os/Parcel/readByte()B
ifne L2
iload 3
istore 2
L3:
aload 0
iload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
aload 0
aload 1
ldc com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
aload 0
aload 1
ldc com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
return
L0:
iconst_1
istore 2
goto L1
L2:
iconst_1
istore 2
goto L3
.limit locals 4
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
aload 0
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionCode()I
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionName()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionHistory()Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionHistory Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isBeta()Z
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getFullPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getIncrementalPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
return
.limit locals 2
.limit stack 2
.end method

.method private getPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
dup
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/<init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFullPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getIncrementalPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNewestVersionCode()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewestVersionHistory()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionHistory Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNewestVersionName()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasIncrementalInfo()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
ifnull L0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/isObjectValid()Z
ifne L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isBeta()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isForce()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
iconst_1
if_icmpge L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
ifnull L1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/isObjectValid()Z
ifeq L1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
ifnull L2
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/isObjectValid()Z
ifeq L1
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setBetaFlag(Z)V
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
return
.limit locals 2
.limit stack 2
.end method

.method public setForceFlag(Z)V
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFullPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
dup
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/<init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
return
.limit locals 2
.limit stack 4
.end method

.method public setIncrementalPackageInfo(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo
dup
aload 1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/<init>(Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;)V
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
return
.limit locals 2
.limit stack 4
.end method

.method public setNewestVersionCode(I)V
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
return
.limit locals 2
.limit stack 2
.end method

.method public setNewestVersionHistory(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionHistory Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNewestVersionName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
iconst_1
istore 4
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionCode I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mNewestVersionHistory Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsBeta Z
ifeq L0
iconst_1
istore 3
L1:
aload 1
iload 3
invokevirtual android/os/Parcel/writeByte(B)V
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIsForce Z
ifeq L2
iload 4
istore 3
L3:
aload 1
iload 3
invokevirtual android/os/Parcel/writeByte(B)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mFullPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/mIncrementalPackageInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
return
L0:
iconst_0
istore 3
goto L1
L2:
iconst_0
istore 3
goto L3
.limit locals 5
.limit stack 3
.end method
