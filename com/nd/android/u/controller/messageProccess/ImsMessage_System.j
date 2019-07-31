.bytecode 50.0
.class public synchronized com/nd/android/u/controller/messageProccess/ImsMessage_System
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
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
astore 2
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_System/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_System/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getNoAckMessages(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor; 1
astore 3
aload 3
ifnull L1
L2:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L3
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_System/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
return
L3:
aload 2
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
goto L2
.limit locals 4
.limit stack 3
.end method
