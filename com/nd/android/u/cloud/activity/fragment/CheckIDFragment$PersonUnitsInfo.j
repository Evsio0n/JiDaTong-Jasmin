.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.implements android/os/Parcelable
.inner class public static PersonUnitsInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;>;"

.field private 'mCaptcha' Ljava/lang/String;

.field private 'mMultiUnit' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;

.field private 'mPersonInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo$1
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo$1/<init>()V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/CREATOR Landroid/os/Parcelable$Creator;
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
ldc com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
aload 1
ldc com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mCaptcha Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1402(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mCaptcha Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCaptcha()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mCaptcha Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPersonInfo()Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitInfoList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/getUnitInfoList()Ljava/util/List;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/isObjectValid()Z
ifne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/isObjectValid()Z
ifeq L0
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setUnitInfoList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;)V"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/<init>()V
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
aload 1
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/access$202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;Ljava/util/List;)Ljava/util/List;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mPersonInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mMultiUnit Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/mCaptcha Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
