.bytecode 50.0
.class public synchronized abstract com/hisun/b2c/api/IRemoteServiceCallback$Stub
.super android/os/Binder
.implements com/hisun/b2c/api/IRemoteServiceCallback
.inner class public static abstract Stub inner com/hisun/b2c/api/IRemoteServiceCallback$Stub outer com/hisun/b2c/api/IRemoteServiceCallback
.inner class private static Proxy inner com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy outer com/hisun/b2c/api/IRemoteServiceCallback$Stub

.field private static final 'DESCRIPTOR' Ljava/lang/String; = "com.hisun.b2c.api.IRemoteServiceCallback"

.field static final 'TRANSACTION_startActivity' I = 1


.field static final 'TRANSACTION_valueChanged' I = 2


.method public <init>()V
aload 0
invokespecial android/os/Binder/<init>()V
aload 0
aload 0
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual com/hisun/b2c/api/IRemoteServiceCallback$Stub/attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisun/b2c/api/IRemoteServiceCallback;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokeinterface android/os/IBinder/queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface; 1
astore 1
aload 1
ifnull L1
aload 1
instanceof com/hisun/b2c/api/IRemoteServiceCallback
ifeq L1
aload 1
checkcast com/hisun/b2c/api/IRemoteServiceCallback
areturn
L1:
new com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy
dup
aload 0
invokespecial com/hisun/b2c/api/IRemoteServiceCallback$Stub$Proxy/<init>(Landroid/os/IBinder;)V
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
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 5
aload 2
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
astore 6
aload 2
invokevirtual android/os/Parcel/readInt()I
istore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
aload 5
aload 6
iload 1
aload 2
invokevirtual com/hisun/b2c/api/IRemoteServiceCallback$Stub/startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
aload 2
ifnull L4
aload 3
iconst_1
invokevirtual android/os/Parcel/writeInt(I)V
aload 2
aload 3
iconst_1
invokevirtual android/os/Bundle/writeToParcel(Landroid/os/Parcel;I)V
iconst_1
ireturn
L4:
aload 3
iconst_0
invokevirtual android/os/Parcel/writeInt(I)V
iconst_1
ireturn
L1:
aload 2
ldc "com.hisun.b2c.api.IRemoteServiceCallback"
invokevirtual android/os/Parcel/enforceInterface(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/os/Parcel/readInt()I
invokevirtual com/hisun/b2c/api/IRemoteServiceCallback$Stub/valueChanged(I)V
iconst_1
ireturn
.limit locals 7
.limit stack 5
.end method
