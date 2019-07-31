.bytecode 50.0
.class final synchronized com/alipay/android/app/IAlixPay$Stub$a
.super java/lang/Object
.implements com/alipay/android/app/IAlixPay
.inner class public static abstract Stub inner com/alipay/android/app/IAlixPay$Stub outer com/alipay/android/app/IAlixPay
.inner class private static final a inner com/alipay/android/app/IAlixPay$Stub$a outer com/alipay/android/app/IAlixPay$Stub

.field private 'a' Landroid/os/IBinder;

.method <init>(Landroid/os/IBinder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
return
.limit locals 2
.limit stack 2
.end method

.method private static a()Ljava/lang/String;
ldc "com.alipay.android.app.IAlixPay"
areturn
.limit locals 0
.limit stack 1
.end method

.method public final Pay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
L0:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
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

.method public final asBinder()Landroid/os/IBinder;
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final prePay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 3
L0:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
iconst_5
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

.method public final registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
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
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
L1:
aload 1
ifnull L6
L3:
aload 1
invokeinterface com/alipay/android/app/IRemoteServiceCallback/asBinder()Landroid/os/IBinder; 0
astore 1
L4:
aload 2
aload 1
invokevirtual android/os/Parcel/writeStrongBinder(Landroid/os/IBinder;)V
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
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

.method public final test()Ljava/lang/String;
.throws android/os/RemoteException
.catch all from L0 to L1 using L2
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 1
invokestatic android/os/Parcel/obtain()Landroid/os/Parcel;
astore 2
L0:
aload 1
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
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

.method public final unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
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
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeInterfaceToken(Ljava/lang/String;)V
L1:
aload 1
ifnull L6
L3:
aload 1
invokeinterface com/alipay/android/app/IRemoteServiceCallback/asBinder()Landroid/os/IBinder; 0
astore 1
L4:
aload 2
aload 1
invokevirtual android/os/Parcel/writeStrongBinder(Landroid/os/IBinder;)V
aload 0
getfield com/alipay/android/app/IAlixPay$Stub$a/a Landroid/os/IBinder;
iconst_4
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
