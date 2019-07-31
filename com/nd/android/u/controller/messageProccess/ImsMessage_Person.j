.bytecode 50.0
.class public synchronized com/nd/android/u/controller/messageProccess/ImsMessage_Person
.super com/nd/android/u/controller/messageProccess/BaseImsMessage

.field private static final 'ACKOFFLINEMSGTPYE' I = -2


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
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
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
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setTypeId(Ljava/lang/Object;)V 1
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L1
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/ackType I
bipush -2
if_icmpne L2
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getNoAckMessages(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor; 1
astore 3
aload 3
ifnull L1
L3:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L4
L5:
aload 3
invokeinterface android/database/Cursor/close()V 0
L6:
aload 0
getfield com/nd/android/u/controller/messageProccess/ImsMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
pop
return
L4:
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 4
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IDbDataSupplier/parseFromCursor(Landroid/database/Cursor;)V 1
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
aload 4
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageData()Lims/bean/NDMessage; 0
getfield ims/bean/NDMessage/ackType I
bipush -2
if_icmpeq L3
goto L5
L2:
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
goto L6
.limit locals 5
.limit stack 4
.end method
