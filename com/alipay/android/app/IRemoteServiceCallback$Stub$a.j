.bytecode 50.0
.class final synchronized com/alipay/android/app/IRemoteServiceCallback$Stub$a
.super java/lang/Object
.implements com/alipay/android/app/IRemoteServiceCallback
.inner class public static abstract Stub inner com/alipay/android/app/IRemoteServiceCallback$Stub outer com/alipay/android/app/IRemoteServiceCallback
.inner class private static final a inner com/alipay/android/app/IRemoteServiceCallback$Stub$a outer com/alipay/android/app/IRemoteServiceCallback$Stub

.field private 'a' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/android/app/IRemoteServiceCallback$Stub$a/a Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method private static a()Ljava/lang/String;
ldc "com.alipay.android.app.IRemoteServiceCallback"
areturn
.limit locals 0
.limit stack 1
.end method

.method public final asBinder()Landroid/os/IBinder;
aload 0
getfield com/alipay/android/app/IRemoteServiceCallback$Stub$a/a Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final isHideLoadingScreen()Z
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
iconst_0
istore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 4
L0:
aload 3
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/app/IRemoteServiceCallback$Stub$a/a Landroid/os/IBinder;
iconst_3
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
iconst_1
istore 2
L3:
aload 4
invokevirtual android/os/Parcel/recycle()V
aload 3
invokevirtual android/os/Parcel/recycle()V
iload 2
ireturn
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

.method public final payEnd(ZLjava/lang/String;)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
iconst_0
istore 3
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 4
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 5
L0:
aload 4
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
L1:
iload 1
ifeq L3
iconst_1
istore 3
L3:
aload 4
iload 3
invokevirtual android/os/Parcel/writeInt(I)V
aload 4
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/app/IRemoteServiceCallback$Stub$a/a Landroid/os/IBinder;
iconst_2
aload 4
aload 5
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 5
invokevirtual android/os/Parcel/readException()V
L4:
aload 5
invokevirtual android/os/Parcel/recycle()V
aload 4
invokevirtual android/os/Parcel/recycle()V
return
L2:
astore 2
aload 5
invokevirtual android/os/Parcel/recycle()V
aload 4
invokevirtual android/os/Parcel/recycle()V
aload 2
athrow
.limit locals 6
.limit stack 5
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 5
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 6
L0:
aload 5
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 5
aload 1
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 5
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 5
iload 3
invokevirtual android/os/Parcel/writeInt(I)V
L1:
aload 4
ifnull L6
L3:
aload 5
iconst_1
invokevirtual android/os/Parcel/writeInt(I)V
aload 4
aload 5
iconst_0
invokevirtual android/os/Bundle/writeToParcel(Landroid/os/Parcel;I)V
L4:
aload 0
getfield com/alipay/android/app/IRemoteServiceCallback$Stub$a/a Landroid/os/IBinder;
iconst_1
aload 5
aload 6
iconst_0
invokeinterface android/os/IBinder/transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z 4
pop
aload 6
invokevirtual android/os/Parcel/readException()V
L5:
aload 6
invokevirtual android/os/Parcel/recycle()V
aload 5
invokevirtual android/os/Parcel/recycle()V
return
L6:
aload 5
iconst_0
invokevirtual android/os/Parcel/writeInt(I)V
L7:
goto L4
L2:
astore 1
aload 6
invokevirtual android/os/Parcel/recycle()V
aload 5
invokevirtual android/os/Parcel/recycle()V
aload 1
athrow
.limit locals 7
.limit stack 5
.end method
