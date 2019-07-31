.bytecode 50.0
.class public abstract interface com/alipay/android/app/IAlixPay
.super java/lang/Object
.implements android/os/IInterface
.inner class public static abstract Stub inner com/alipay/android/app/IAlixPay$Stub outer com/alipay/android/app/IAlixPay
.inner class private static final a inner com/alipay/android/app/IAlixPay$Stub$a outer com/alipay/android/app/IAlixPay

.method public abstract Pay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.end method

.method public abstract prePay(Ljava/lang/String;)Ljava/lang/String;
.throws android/os/RemoteException
.end method

.method public abstract registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.end method

.method public abstract test()Ljava/lang/String;
.throws android/os/RemoteException
.end method

.method public abstract unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.throws android/os/RemoteException
.end method
