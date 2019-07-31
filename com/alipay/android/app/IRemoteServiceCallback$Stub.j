.bytecode 50.0
.class public synchronized abstract com/alipay/android/app/IRemoteServiceCallback$Stub
.super android/os/Binder
.implements com/alipay/android/app/IRemoteServiceCallback
.inner class public static abstract Stub inner com/alipay/android/app/IRemoteServiceCallback$Stub outer com/alipay/android/app/IRemoteServiceCallback
.inner class private static final a inner com/alipay/android/app/IRemoteServiceCallback$Stub$a outer com/alipay/android/app/IRemoteServiceCallback$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.alipay.android.app.IRemoteServiceCallback"

.field static final 'TRANSACTION_isHideLoadingScreen' I = 3


.field static final 'TRANSACTION_payEnd' I = 2


.field static final 'TRANSACTION_startActivity' I = 1


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual com/alipay/android/app/IRemoteServiceCallback$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/alipay/android/app/IRemoteServiceCallback
ifeq L1
aload 1
checkcast com/alipay/android/app/IRemoteServiceCallback
areturn
L1:
new com/alipay/android/app/IRemoteServiceCallback$Stub$a
dup
aload 0
invokespecial com/alipay/android/app/IRemoteServiceCallback$Stub$a/<init>(Landroid/os/IBinder;)V
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
iconst_0
istore 5
iconst_0
istore 6
iload 1
lookupswitch
1 : L0
2 : L1
3 : L2
1598968902 : L3
default : L4
L4:
aload 0
iload 1
aload 2
aload 3
iload 4
invokespecial android/os/Binder/onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
ireturn
L3:
aload 3
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 7
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 8
aload 2
invokevirtual android/os/Parcel/readInt()I
istore 1
aload 2
invokevirtual android/os/Parcel/readInt()I
ifeq L5
getstatic android/os/Bundle/CREATOR Landroid/os/Parcelable$Creator;
aload 2
invokeinterface android/os/Parcelable$Creator/createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object; 1
checkcast android/os/Bundle
astore 2
L6:
aload 0
aload 7
aload 8
iload 1
aload 2
invokevirtual com/alipay/android/app/IRemoteServiceCallback$Stub/startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
L5:
aconst_null
astore 2
goto L6
L1:
aload 2
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 2
invokevirtual android/os/Parcel/readInt()I
ifeq L7
iconst_1
istore 6
L7:
aload 0
iload 6
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/alipay/android/app/IRemoteServiceCallback$Stub/payEnd(ZLjava/lang/String;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
L2:
aload 2
ldc "com.alipay.android.app.IRemoteServiceCallback"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
invokevirtual com/alipay/android/app/IRemoteServiceCallback$Stub/isHideLoadingScreen()Z
istore 6
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iload 5
istore 1
iload 6
ifeq L8
iconst_1
istore 1
L8:
aload 3
iload 1
invokevirtual android/os/Parcel/writeInt(I)V
iconst_1
ireturn
.limit locals 9
.limit stack 5
.end method
