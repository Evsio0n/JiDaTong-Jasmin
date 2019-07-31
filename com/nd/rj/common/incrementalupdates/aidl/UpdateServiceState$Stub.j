.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub
.super android/os/Binder
.implements com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
.inner class public static abstract Stub inner com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub outer com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
.inner class private static Proxy inner com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy outer com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"

.field static final 'TRANSACTION_isForceUpdate' I = 1


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
invokevirtual com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nd/rj/common/incrementalupdates/aidl/UpdateServiceState;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
ifeq L1
aload 1
checkcast com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
areturn
L1:
new com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy/<init>(Landroid/os/IBinder;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public asBinder()Landroid/os/IBinder;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.throws android/os/RemoteException
iload 1
lookupswitch
1 : L0
1598968902 : L1
default : L2
L2:
aload 0
iload 1
aload 2
aload 3
iload 4
invokespecial android/os/Binder/onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
ireturn
L1:
aload 3
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub/isForceUpdate()Z
istore 5
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iload 5
ifeq L3
iconst_1
istore 1
L4:
aload 3
iload 1
invokevirtual android/os/Parcel/writeInt(I)V
iconst_1
ireturn
L3:
iconst_0
istore 1
goto L4
.limit locals 6
.limit stack 5
.end method
