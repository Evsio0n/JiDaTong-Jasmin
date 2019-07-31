.bytecode 50.0
.class public synchronized abstract com/alipay/android/app/IAlixPay$Stub
.super android/os/Binder
.implements com/alipay/android/app/IAlixPay
.inner class public static abstract Stub inner com/alipay/android/app/IAlixPay$Stub outer com/alipay/android/app/IAlixPay
.inner class private static final a inner com/alipay/android/app/IAlixPay$Stub$a outer com/alipay/android/app/IAlixPay$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.alipay.android.app.IAlixPay"

.field static final 'TRANSACTION_Pay' I = 1


.field static final 'TRANSACTION_prePay' I = 5


.field static final 'TRANSACTION_registerCallback' I = 3


.field static final 'TRANSACTION_test' I = 2


.field static final 'TRANSACTION_unregisterCallback' I = 4


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.alipay.android.app.IAlixPay"
invokevirtual com/alipay/android/app/IAlixPay$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.alipay.android.app.IAlixPay"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/alipay/android/app/IAlixPay
ifeq L1
aload 1
checkcast com/alipay/android/app/IAlixPay
areturn
L1:
new com/alipay/android/app/IAlixPay$Stub$a
dup
aload 0
invokespecial com/alipay/android/app/IAlixPay$Stub$a/<init>(Landroid/os/IBinder;)V
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
2 : L1
3 : L2
4 : L3
5 : L4
1598968902 : L5
default : L6
L6:
aload 0
iload 1
aload 2
aload 3
iload 4
invokespecial android/os/Binder/onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
ireturn
L5:
aload 3
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/alipay/android/app/IAlixPay$Stub/Pay(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 3
invokevirtual android/os/Parcel/writeNoException()V
aload 3
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L1:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
invokevirtual com/alipay/android/app/IAlixPay$Stub/test()Ljava/lang/String;
astore 2
aload 3
invokevirtual android/os/Parcel/writeNoException()V
aload 3
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L2:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readStrongBinder()Landroid/os/IBinder;
invokestatic com/alipay/android/app/IRemoteServiceCallback$Stub/asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
invokevirtual com/alipay/android/app/IAlixPay$Stub/registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
L3:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readStrongBinder()Landroid/os/IBinder;
invokestatic com/alipay/android/app/IRemoteServiceCallback$Stub/asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
invokevirtual com/alipay/android/app/IAlixPay$Stub/unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
L4:
aload 2
ldc "com.alipay.android.app.IAlixPay"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/alipay/android/app/IAlixPay$Stub/prePay(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 3
invokevirtual android/os/Parcel/writeNoException()V
aload 3
aload 2
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 5
.limit stack 5
.end method
