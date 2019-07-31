.bytecode 50.0
.class synchronized com/nd/android/u/controller/messageProccess/BaseImsMessage$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/controller/messageProccess/BaseImsMessage/doAction(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;ILjava/lang/String;)Z
.inner class inner com/nd/android/u/controller/messageProccess/BaseImsMessage$1

.field final synthetic 'this$0' Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;

.field private final synthetic 'val$opType' I

.field private final synthetic 'val$shareFileOperation' Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;

.field private final synthetic 'val$url' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;Ljava/lang/String;Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V
aload 0
aload 1
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/this$0 Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;
aload 0
aload 2
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$url Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$shareFileOperation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 0
iload 4
putfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$opType I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/this$0 Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/put(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/this$0 Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;
invokestatic com/nd/android/u/controller/messageProccess/BaseImsMessage/access$0(Lcom/nd/android/u/controller/messageProccess/BaseImsMessage;)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$shareFileOperation Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 0
getfield com/nd/android/u/controller/messageProccess/BaseImsMessage$1/val$opType I
invokeinterface com/nd/android/u/controller/innerInterface/IShareFile/doRequest(Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;I)V 2
return
.limit locals 1
.limit stack 3
.end method
