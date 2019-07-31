.bytecode 50.0
.class synchronized com/nd/android/u/business/com/ProgressDownloadManager$1
.super java/lang/Object
.implements ims/outInterface/IStateObserver
.enclosing method com/nd/android/u/business/com/ProgressDownloadManager
.inner class inner com/nd/android/u/business/com/ProgressDownloadManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/business/com/ProgressDownloadManager;

.method <init>(Lcom/nd/android/u/business/com/ProgressDownloadManager;)V
aload 0
aload 1
putfield com/nd/android/u/business/com/ProgressDownloadManager$1/this$0 Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onConnectStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onNetworkStateChanged(I)V
iload 1
ifne L0
aload 0
getfield com/nd/android/u/business/com/ProgressDownloadManager$1/this$0 Lcom/nd/android/u/business/com/ProgressDownloadManager;
iconst_1
invokestatic com/nd/android/u/business/com/ProgressDownloadManager/access$0(Lcom/nd/android/u/business/com/ProgressDownloadManager;Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onOnlineStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method
