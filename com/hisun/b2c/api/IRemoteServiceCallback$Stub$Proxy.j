.bytecode 50.0
.class synchronized com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy
.super java/lang/Object
.implements com/hisun/b2c/api/IRemoteServiceCallback
.inner class public static abstract Stub inner com/hisun/b2c/api/IRemoteServiceCallback$Stub outer com/hisun/b2c/api/IRemoteServiceCallback
.inner class private static Proxy inner com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy outer com/hisun/b2c/api/IRemoteServiceCallback$Stub

.field private 'mRemote' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy/mRemote Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method public asBinder()Landroid/os/IBinder;
aload 0
getfield com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy/mRemote Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
areturn
.limit locals 1
.limit stack 1
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 4
L0:
aload 4
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 4
aload 1
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 4
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 4
iload 3
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_1
aload 4
aconst_null
iconst_1
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
L1:
aload 4
invokevirtual android/os/Parcel/recycle()V
return
L2:
astore 1
aload 4
invokevirtual android/os/Parcel/recycle()V
aload 1
athrow
.limit locals 5
.limit stack 5
.end method

.method public valueChanged(I)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 2
iload 1
invokevirtual android/os/Parcel/writeInt(I)V
aload 0
getfield com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_2
aload 2
aconst_null
iconst_1
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
L1:
aload 2
invokevirtual android/os/Parcel/recycle()V
return
L2:
astore 3
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 3
athrow
.limit locals 4
.limit stack 5
.end method
