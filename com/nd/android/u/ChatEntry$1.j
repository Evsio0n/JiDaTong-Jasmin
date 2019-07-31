.bytecode 50.0
.class synchronized com/nd/android/u/ChatEntry$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ChatEntry/clearChatRelative()V
.inner class inner com/nd/android/u/ChatEntry$1

.field final synthetic 'this$0' Lcom/nd/android/u/ChatEntry;

.method <init>(Lcom/nd/android/u/ChatEntry;)V
aload 0
aload 1
putfield com/nd/android/u/ChatEntry$1/this$0 Lcom/nd/android/u/ChatEntry;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic ims/IMSdk/logoutIMS()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
ldc ""
putfield com/nd/android/u/controller/ChatGlobalVariable/mShareFileServiceSid Ljava/lang/String;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
invokevirtual com/common/android/utils/smiley/Smileyhelper/clearInstance()V
invokestatic com/common/android/utils/db/CommonDaoFactory/getInstance()Lcom/common/android/utils/db/CommonDaoFactory;
invokevirtual com/common/android/utils/db/CommonDaoFactory/clear()V
getstatic com/common/android/utils/db/CommonDatabase/INSTANCE Lcom/common/android/utils/db/CommonDatabase;
invokevirtual com/common/android/utils/db/CommonDatabase/close()V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/clear()V
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/cancelNotify()V
return
.limit locals 1
.limit stack 2
.end method
