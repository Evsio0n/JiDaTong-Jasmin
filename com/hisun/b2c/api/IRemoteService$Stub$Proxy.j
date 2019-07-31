.bytecode 50.0
.class synchronized com/hisun/b2c/api/IRemoteService$Stub$Proxy
.super java/lang/Object
.implements com/hisun/b2c/api/IRemoteService
.inner class public static abstract Stub inner com/hisun/b2c/api/IRemoteService$Stub outer com/hisun/b2c/api/IRemoteService
.inner class private static Proxy inner com/hisun/b2c/api/IRemoteService$Stub$Proxy outer com/hisun/b2c/api/IRemoteService$Stub

.field private 'mRemote' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/hisun/b2c/api/IRemoteService$Stub$Proxy/mRemote Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method public IPay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/hisun/b2c/api/IRemoteService$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_1
aload 2
aload 3
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 3
invokevirtual android/os/Parcel/readException()V
aload 3
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 1
L1:
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
areturn
L2:
astore 1
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
athrow
.limit locals 4
.limit stack 5
.end method

.method public asBinder()Landroid/os/IBinder;
aload 0
getfield com/hisun/b2c/api/IRemoteService$Stub$Proxy/mRemote Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
ldc "com.hisun.b2c.api.IRemoteService"
areturn
.limit locals 1
.limit stack 1
.end method

.method public registerCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
L1:
aload 1
ifnull L6
L3:
aload 1
invokeinterface com/hisun/b2c/api/IRemoteServiceCallback/asBinder()Landroid/os/IBinder; 0
astore 1
L4:
aload 2
aload 1
invokevirtual android/os/Parcel/writeStrongBinder(Landroid/os/IBinder;)V
aload 0
getfield com/hisun/b2c/api/IRemoteService$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_2
aload 2
aload 3
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 3
invokevirtual android/os/Parcel/readException()V
L5:
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
return
L6:
aconst_null
astore 1
goto L4
L2:
astore 1
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
athrow
.limit locals 4
.limit stack 5
.end method

.method public unregisterCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
L1:
aload 1
ifnull L6
L3:
aload 1
invokeinterface com/hisun/b2c/api/IRemoteServiceCallback/asBinder()Landroid/os/IBinder; 0
astore 1
L4:
aload 2
aload 1
invokevirtual android/os/Parcel/writeStrongBinder(Landroid/os/IBinder;)V
aload 0
getfield com/hisun/b2c/api/IRemoteService$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_3
aload 2
aload 3
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 3
invokevirtual android/os/Parcel/readException()V
L5:
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
return
L6:
aconst_null
astore 1
goto L4
L2:
astore 1
aload 3
invokevirtual android/os/Parcel/recycle()V
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
athrow
.limit locals 4
.limit stack 5
.end method
