.bytecode 50.0
.class synchronized com/nd/address/bean/Address$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/nd/address/bean/Address;>;"
.enclosing method com/nd/address/bean/Address
.inner class inner com/nd/address/bean/Address$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/nd/address/bean/Address;
new com/nd/address/bean/Address
dup
invokespecial com/nd/address/bean/Address/<init>()V
astore 2
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/nd/address/bean/Address/setContent(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/nd/address/bean/Address/setCode(Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/nd/address/bean/Address$1/createFromParcel(Landroid/os/Parcel;)Lcom/nd/address/bean/Address;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/nd/address/bean/Address;
iload 1
anewarray com/nd/address/bean/Address
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/address/bean/Address$1/newArray(I)[Lcom/nd/address/bean/Address;
areturn
.limit locals 2
.limit stack 2
.end method
