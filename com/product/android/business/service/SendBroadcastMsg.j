.bytecode 50.0
.class public synchronized com/product/android/business/service/SendBroadcastMsg
.super java/lang/Object

.field private static 'instance' Lcom/product/android/business/service/SendBroadcastMsg;

.field private 'intent' Landroid/content/Intent;

.method static <clinit>()V
new com/product/android/business/service/SendBroadcastMsg
dup
invokespecial com/product/android/business/service/SendBroadcastMsg/<init>()V
putstatic com/product/android/business/service/SendBroadcastMsg/instance Lcom/product/android/business/service/SendBroadcastMsg;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 0
new android/content/Intent
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".msg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
putfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
return
.limit locals 1
.limit stack 5
.end method

.method public static getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
getstatic com/product/android/business/service/SendBroadcastMsg/instance Lcom/product/android/business/service/SendBroadcastMsg;
areturn
.limit locals 0
.limit stack 1
.end method

.method public sendFriendRefreshBroadCast()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
bipush 89
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public sendGroupInfoChange(Ljava/lang/String;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "cmd"
sipush 10003
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "str"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public sendNotifyGroupMemberRefreshStatus()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
sipush 11009
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public sendNotifyIdentityExpired()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
sipush 5502
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public sendNotifyMsg()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
bipush 31
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public sendNotifyPhoneChangeMsg()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
ldc_w 85674
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public sendNotifyProcessComplete(I)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "cmd"
iload 1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public sendNotifyRemoveGroup(J)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "cmd"
sipush 11009
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
ldc "gid"
lload 1
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public sendNotifySignChance()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "cmd"
sipush 30010
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public showToast(Ljava/lang/String;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "cmd"
sipush 2000
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "msgData"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/product/android/business/service/SendBroadcastMsg/intent Landroid/content/Intent;
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method
