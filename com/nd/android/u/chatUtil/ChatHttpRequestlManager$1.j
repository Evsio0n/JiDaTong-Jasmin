.bytecode 50.0
.class synchronized com/nd/android/u/chatUtil/ChatHttpRequestlManager$1
.super java/lang/Object
.implements ims/outInterface/IStateObserver
.enclosing method com/nd/android/u/chatUtil/ChatHttpRequestlManager
.inner class inner com/nd/android/u/chatUtil/ChatHttpRequestlManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;

.method <init>(Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;)V
aload 0
aload 1
putfield com/nd/android/u/chatUtil/ChatHttpRequestlManager$1/this$0 Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
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
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
iload 1
ifne L5
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager$1/this$0 Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
invokestatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/access$2(Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;)Ljava/util/ArrayList;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager$1/this$0 Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
invokestatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/access$2(Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 2
monitorexit
L1:
return
L2:
astore 3
L3:
aload 2
monitorexit
L4:
aload 3
athrow
L5:
return
.limit locals 4
.limit stack 1
.end method

.method public onOnlineStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method
