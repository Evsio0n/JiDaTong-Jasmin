.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/util/SyncMessageReminder
.super java/lang/Object
.implements java/lang/Runnable
.inner class public static abstract interface OnSyncMessageReceivedListener inner com/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener outer com/ccb/ccbnetpay/util/SyncMessageReminder

.field private 'listener' Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;

.field private 'message' Ljava/lang/String;

.field private 'what' I

.method public <init>(ILjava/lang/String;Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/what I
aload 0
aconst_null
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/message Ljava/lang/String;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
iload 1
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/what I
aload 0
aload 2
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/message Ljava/lang/String;
aload 0
aload 3
putfield com/ccb/ccbnetpay/util/SyncMessageReminder/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/ccb/ccbnetpay/util/SyncMessageReminder/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
ifnull L0
aload 0
getfield com/ccb/ccbnetpay/util/SyncMessageReminder/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
getfield com/ccb/ccbnetpay/util/SyncMessageReminder/what I
aload 0
getfield com/ccb/ccbnetpay/util/SyncMessageReminder/message Ljava/lang/String;
invokeinterface com/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener/receivedMessage(ILjava/lang/String;)V 2
L0:
return
.limit locals 1
.limit stack 3
.end method
