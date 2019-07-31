.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
.inner class public static abstract Stub inner com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub outer com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState
.inner class private static Proxy inner com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy outer com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub

.field private 'mRemote' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy/mRemote Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method public asBinder()Landroid/os/IBinder;
aload 0
getfield com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy/mRemote Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
areturn
.limit locals 1
.limit stack 1
.end method

.method public isForceUpdate()Z
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
iconst_1
istore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 4
L0:
aload 3
ldc "com.nd.rj.common.incrementalupdates.aidl.UpdateServiceState"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_1
aload 3
aload 4
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 4
invokevirtual android/os/Parcel/readException()V
aload 4
invokevirtual android/os/Parcel/readInt()I
istore 1
L1:
iload 1
ifeq L3
L4:
aload 4
invokevirtual android/os/Parcel/recycle()V
aload 3
invokevirtual android/os/Parcel/recycle()V
iload 2
ireturn
L3:
iconst_0
istore 2
goto L4
L2:
astore 5
aload 4
invokevirtual android/os/Parcel/recycle()V
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 5
athrow
.limit locals 6
.limit stack 5
.end method
