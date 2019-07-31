.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.implements android/os/Parcelable
.inner class public static SingleUnitInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"

.field private 'mUid' J

.field private 'mUnitId' I

.field private 'mUnitName' Ljava/lang/String;

.field private 'mUserName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo$1
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo$1/<init>()V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/CREATOR Landroid/os/Parcelable$Creator;
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
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitId I
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUid J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUserName Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitId I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$702(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$802(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;J)J
aload 0
lload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$902(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUserName Ljava/lang/String;
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

.method public getUid()J
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitId()I
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUserName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUserName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitId I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUnitName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/mUserName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
