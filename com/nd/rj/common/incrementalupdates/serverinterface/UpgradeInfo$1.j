.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;>;"
.enclosing method com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
.inner class inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
dup
aload 1
aconst_null
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/<init>(Landroid/os/Parcel;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1/createFromParcel(Landroid/os/Parcel;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
iload 1
anewarray com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo$1/newArray(I)[Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
areturn
.limit locals 2
.limit stack 2
.end method
