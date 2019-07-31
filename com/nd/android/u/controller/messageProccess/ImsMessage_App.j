.bytecode 50.0
.class public synchronized com/nd/android/u/controller/messageProccess/ImsMessage_App
.super com/nd/android/u/controller/messageProccess/BaseImsMessage

.method public <init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 2
.end method

.method public ackAllMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 1
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iload 1
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 2
aload 2
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTypeId(Ljava/lang/Object;)V 1
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
astore 3
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getNoAckMessages(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor; 1
astore 4
aload 4
ifnull L1
L2:
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L3
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
return
L3:
aload 3
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
goto L2
.limit locals 5
.limit stack 4
.end method

.method public deleteAllMessage()V
aload 0
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/deleteAllMessage()V
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_App/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
astore 1
aload 1
instanceof [Ljava/lang/String;
ifeq L0
aload 1
checkcast [Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokestatic com/nd/android/u/allCommonUtils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/nd/android/u/allCommonUtils/SharedPreferenceHelper;
aload 1
invokevirtual com/nd/android/u/allCommonUtils/SharedPreferenceHelper/removeKey(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
