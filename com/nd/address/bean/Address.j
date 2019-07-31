.bytecode 50.0
.class public synchronized com/nd/address/bean/Address
.super java/lang/Object
.implements android/os/Parcelable
.inner class inner com/nd/address/bean/Address$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/address/bean/Address;>;"

.field private 'mCode' Ljava/lang/String;

.field private 'mContent' Ljava/lang/String;

.field private 'mIsSelected' Z

.field private 'mLevel' Lcom/nd/rj/common/administrativeregions/lib/Level;

.method static <clinit>()V
new com/nd/address/bean/Address$1
dup
invokespecial com/nd/address/bean/Address$1/<init>()V
putstatic com/nd/address/bean/Address/CREATOR Landroid/os/Parcelable$Creator;
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

.method public <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/address/bean/Address/mContent Ljava/lang/String;
aload 0
aload 2
putfield com/nd/address/bean/Address/mCode Ljava/lang/String;
aload 0
aload 3
putfield com/nd/address/bean/Address/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
return
.limit locals 4
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/nd/address/bean/Address/mCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/address/bean/Address/mContent Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLevel()Lcom/nd/rj/common/administrativeregions/lib/Level;
aload 0
getfield com/nd/address/bean/Address/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isSelected()Z
aload 0
getfield com/nd/address/bean/Address/mIsSelected Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/address/bean/Address/mCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/address/bean/Address/mContent Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLevel(Lcom/nd/rj/common/administrativeregions/lib/Level;)V
aload 0
aload 1
putfield com/nd/address/bean/Address/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelected(Z)V
aload 0
iload 1
putfield com/nd/address/bean/Address/mIsSelected Z
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "Address [mContent="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/address/bean/Address/mContent Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", mCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/address/bean/Address/mCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/address/bean/Address/mContent Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/address/bean/Address/mCode Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method
