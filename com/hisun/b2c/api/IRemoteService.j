.bytecode 50.0
.class public abstract interface com/hisun/b2c/api/IRemoteService
.super java/lang/Object
.implements android/os/IInterface
.inner class public static abstract Stub inner com/hisun/b2c/api/IRemoteService$Stub outer com/hisun/b2c/api/IRemoteService
.inner class private static Proxy inner com/hisun/b2c/api/IRemoteService$Stub$Proxy outer com/hisun/b2c/api/IRemoteService

.method public abstract IPay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.end method

.method public abstract registerCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.end method

.method public abstract unregisterCallback(Lcom/hisun/b2c/api/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.end method
