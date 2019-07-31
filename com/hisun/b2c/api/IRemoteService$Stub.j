.bytecode 50.0
.class public synchronized abstract com/hisun/b2c/api/IRemoteService$Stub
.super android/os/Binder
.implements com/hisun/b2c/api/IRemoteService
.inner class public static abstract Stub inner com/hisun/b2c/api/IRemoteService$Stub outer com/hisun/b2c/api/IRemoteService
.inner class private static Proxy inner com/hisun/b2c/api/IRemoteService$Stub$Proxy outer com/hisun/b2c/api/IRemoteService$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.hisun.b2c.api.IRemoteService"

.field static final 'TRANSACTION_IPay' I = 1


.field static final 'TRANSACTION_registerCallback' I = 2


.field static final 'TRANSACTION_unregisterCallback' I = 3


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual com/hisun/b2c/api/IRemoteService$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisun/b2c/api/IRemoteService;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.hisun.b2c.api.IRemoteService"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/hisun/b2c/api/IRemoteService
ifeq L1
aload 1
checkcast com/hisun/b2c/api/IRemoteService
areturn
L1:
new com/hisun/b2c/api/IRemoteService$Stub$Proxy
dup
aload 0
invokespecial com/hisun/b2c/api/IRemoteService$Stub$Proxy/<init>(Landroid/os/IBinder;)V
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
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokevirtual com/hisun/b2c/api/IRemoteService$Stub/IPay(Ljava/lang/String;)Ljava/lang/String;
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
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readStrongBinder()Landroid/os/IBinder;
invokestatic com/hisun/b2c/api/IRemoteServiceCallback$Stub/asInterface(Landroid/os/IBinder;)Lcom/hisun/b2c/api/IRemoteServiceCallback;
invokevirtual com/hisun/b2c/api/IRemoteService$Stub/registerCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
L2:
aload 2
ldc "com.hisun.b2c.api.IRemoteService"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readStrongBinder()Landroid/os/IBinder;
invokestatic com/hisun/b2c/api/IRemoteServiceCallback$Stub/asInterface(Landroid/os/IBinder;)Lcom/hisun/b2c/api/IRemoteServiceCallback;
invokevirtual com/hisun/b2c/api/IRemoteService$Stub/unregisterCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
aload 3
invokevirtual android/os/Parcel/writeNoException()V
iconst_1
ireturn
.limit locals 5
.limit stack 5
.end method
