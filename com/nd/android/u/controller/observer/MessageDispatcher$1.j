.bytecode 50.0
.class synchronized com/nd/android/u/controller/observer/MessageDispatcher$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
.inner class inner com/nd/android/u/controller/observer/MessageDispatcher$1

.field final synthetic 'this$0' Lcom/nd/android/u/controller/observer/MessageDispatcher;

.field private final synthetic 'val$message' Lcom/nd/android/u/controller/innerInterface/IMessageProccess;

.field private final synthetic 'val$showNotify' Z

.method <init>(Lcom/nd/android/u/controller/observer/MessageDispatcher;Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
aload 0
aload 1
putfield com/nd/android/u/controller/observer/MessageDispatcher$1/this$0 Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
aload 2
putfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
iload 3
putfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$showNotify Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$showNotify Z
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/receiveMessage(Z)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher$1/this$0 Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
aload 0
getfield com/nd/android/u/controller/observer/MessageDispatcher$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyReceiveMessage(ILcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
L0:
return
.limit locals 1
.limit stack 3
.end method
