.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.implements android/os/Parcelable
.inner class public static PersonInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;>;"

.field private 'mPhoneNumber' Ljava/lang/String;

.field private 'mRealName' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo$1
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo$1/<init>()V
putstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/CREATOR Landroid/os/Parcelable$Creator;
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
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mRealName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mPhoneNumber Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$1202(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mRealName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1302(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mPhoneNumber Ljava/lang/String;
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

.method public getPhoneNumber()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mPhoneNumber Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRealName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mRealName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mRealName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mPhoneNumber Ljava/lang/String;
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
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mRealName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/mPhoneNumber Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method
