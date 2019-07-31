.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/data/BaseItemProperty
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.implements android/os/Parcelable
.inner class static final inner com/nd/android/backpacksystem/data/BaseItemProperty$1
.inner class public static final enum EXCLUSIVE_FLAG inner com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG outer com/nd/android/backpacksystem/data/BaseItemProperty

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/backpacksystem/data/BaseItemProperty;>;"

.field private 'mBrief' Ljava/lang/String;

.field private 'mDefalutMsg' Ljava/lang/String;

.field private 'mExclusiveFlag' Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;

.field private 'mIconUrl' Ljava/lang/String;

.field private 'mItemTypeId' J

.field private 'mName' Ljava/lang/String;

.field private 'mPeriodOfValidity' J

.field private 'mThankMsg' [Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/backpacksystem/data/BaseItemProperty$1
dup
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty$1/<init>()V
putstatic com/nd/android/backpacksystem/data/BaseItemProperty/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
aload 0
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/NORMAL Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
return
.limit locals 1
.limit stack 3
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
aload 0
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/NORMAL Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mName Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mBrief Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mIconUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mDefalutMsg Ljava/lang/String;
aload 1
invokevirtual android/os/Parcel/readInt()I
istore 2
iload 2
ifle L0
aload 0
iload 2
anewarray java/lang/String
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
invokevirtual android/os/Parcel/readStringArray([Ljava/lang/String;)V
L0:
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/value2Flag(I)Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
return
.limit locals 3
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/backpacksystem/data/BaseItemProperty$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty/<init>(Landroid/os/Parcel;)V
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

.method public getBrief()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mBrief Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDefalutMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mDefalutMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExclusiveFlag()Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIconUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mIconUrl Ljava/lang/String;
ldc "ICONSIZE"
iconst_1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getItemTypeId()J
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPeriodOfValidity()J
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getThankMsg()[Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mBrief Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mIconUrl Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mDefalutMsg Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
arraylength
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public setBrief(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mBrief Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDefalutMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mDefalutMsg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setExclusiveFlag(Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
return
.limit locals 2
.limit stack 2
.end method

.method public setIconUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mIconUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setItemTypeId(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
return
.limit locals 3
.limit stack 3
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPeriodOfValidity(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
return
.limit locals 3
.limit stack 3
.end method

.method public setThankMsg([Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mItemTypeId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mName Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mBrief Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mPeriodOfValidity J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mIconUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mDefalutMsg Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
ifnonnull L0
iconst_0
istore 2
L1:
aload 1
iload 2
invokevirtual android/os/Parcel/writeInt(I)V
iload 2
ifle L2
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
invokevirtual android/os/Parcel/writeStringArray([Ljava/lang/String;)V
L2:
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mExclusiveFlag Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
invokestatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/access$100(Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;)I
invokevirtual android/os/Parcel/writeInt(I)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty/mThankMsg [Ljava/lang/String;
arraylength
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method
