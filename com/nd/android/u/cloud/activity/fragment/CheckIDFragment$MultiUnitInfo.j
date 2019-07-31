.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.implements android/os/Parcelable
.inner class public static MultiUnitInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;>;"

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"

.method static <clinit>()V
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo$1
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo$1/<init>()V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/CREATOR Landroid/os/Parcelable$Creator;
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
aload 1
invokevirtual android/os/Parcel/readInt()I
istore 3
iload 3
ifeq L0
aload 0
new java/util/ArrayList
dup
iload 3
invokespecial java/util/ArrayList/<init>(I)V
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
ldc com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 4
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
aload 1
aload 4
invokevirtual android/os/Parcel/readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 5
.limit stack 4
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
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

.method public getUnitInfoList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setInfo(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
ifnonnull L0
iconst_0
istore 3
L1:
aload 1
iload 3
invokevirtual android/os/Parcel/writeInt(I)V
iload 3
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
iload 2
invokevirtual android/os/Parcel/writeParcelable(Landroid/os/Parcelable;I)V
goto L3
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
goto L1
L2:
return
.limit locals 5
.limit stack 3
.end method
