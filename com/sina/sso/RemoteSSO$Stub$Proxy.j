.bytecode 50.0
.class synchronized com/sina/sso/RemoteSSO$Stub$Proxy
.super java/lang/Object
.implements com/sina/sso/RemoteSSO
.inner class public static abstract Stub inner com/sina/sso/RemoteSSO$Stub outer com/sina/sso/RemoteSSO
.inner class private static Proxy inner com/sina/sso/RemoteSSO$Stub$Proxy outer com/sina/sso/RemoteSSO$Stub

.field private 'mRemote' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/sina/sso/RemoteSSO$Stub$Proxy/mRemote Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method public asBinder()Landroid/os/IBinder;
aload 0
getfield com/sina/sso/RemoteSSO$Stub$Proxy/mRemote Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getActivityName()Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 1
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
L0:
aload 1
ldc "com.sina.sso.RemoteSSO"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 0
getfield com/sina/sso/RemoteSSO$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_2
aload 1
aload 2
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 2
invokevirtual android/os/Parcel/readException()V
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 3
L1:
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
invokevirtual android/os/Parcel/recycle()V
aload 3
areturn
L2:
astore 3
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
invokevirtual android/os/Parcel/recycle()V
aload 3
athrow
.limit locals 4
.limit stack 5
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
ldc "com.sina.sso.RemoteSSO"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPackageName()Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 1
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
L0:
aload 1
ldc "com.sina.sso.RemoteSSO"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 0
getfield com/sina/sso/RemoteSSO$Stub$Proxy/mRemote Landroid/os/IBinder;
iconst_1
aload 1
aload 2
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 2
invokevirtual android/os/Parcel/readException()V
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 3
L1:
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
invokevirtual android/os/Parcel/recycle()V
aload 3
areturn
L2:
astore 3
aload 2
invokevirtual android/os/Parcel/recycle()V
aload 1
invokevirtual android/os/Parcel/recycle()V
aload 3
athrow
.limit locals 4
.limit stack 5
.end method
