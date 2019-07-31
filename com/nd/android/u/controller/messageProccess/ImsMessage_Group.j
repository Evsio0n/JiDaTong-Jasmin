.bytecode 50.0
.class public synchronized com/nd/android/u/controller/messageProccess/ImsMessage_Group
.super com/nd/android/u/controller/messageProccess/BaseImsMessage

.method public <init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected isExist()Z
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Group/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 80
if_icmpeq L0
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Group/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
sipush 20481
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Group/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Group/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
iconst_2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z 2
ifeq L1
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "group share file exist:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Group/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getFileName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L1:
aload 0
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/isExist()Z
ireturn
.limit locals 1
.limit stack 4
.end method
