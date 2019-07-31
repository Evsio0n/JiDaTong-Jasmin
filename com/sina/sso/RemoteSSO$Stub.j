.bytecode 50.0
.class public synchronized abstract com/sina/sso/RemoteSSO$Stub
.super android/os/Binder
.implements com/sina/sso/RemoteSSO
.inner class public static abstract Stub inner com/sina/sso/RemoteSSO$Stub outer com/sina/sso/RemoteSSO
.inner class private static Proxy inner com/sina/sso/RemoteSSO$Stub$Proxy outer com/sina/sso/RemoteSSO$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.sina.sso.RemoteSSO"

.field static final 'TRANSACTION_getActivityName' I = 2


.field static final 'TRANSACTION_getPackageName' I = 1


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.sina.sso.RemoteSSO"
invokevirtual com/sina/sso/RemoteSSO$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.sina.sso.RemoteSSO"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/sina/sso/RemoteSSO
ifeq L1
aload 1
checkcast com/sina/sso/RemoteSSO
areturn
L1:
new com/sina/sso/RemoteSSO$Stub$Proxy
dup
aload 0
invokespecial com/sina/sso/RemoteSSO$Stub$Proxy/<init>(Landroid/os/IBinder;)V
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
1598968902 : L2
default : L3
L3:
aload 0
iload 1
aload 2
aload 3
iload 4
invokespecial android/os/Binder/onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
ireturn
L2:
aload 3
ldc "com.sina.sso.RemoteSSO"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.sina.sso.RemoteSSO"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
invokevirtual com/sina/sso/RemoteSSO$Stub/getPackageName()Ljava/lang/String;
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
ldc "com.sina.sso.RemoteSSO"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
invokevirtual com/sina/sso/RemoteSSO$Stub/getActivityName()Ljava/lang/String;
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
