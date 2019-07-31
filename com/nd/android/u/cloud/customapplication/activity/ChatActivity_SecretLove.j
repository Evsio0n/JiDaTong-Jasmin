.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove
.super com/nd/android/u/ui/activity/message_chat/ChatActivity_App

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getRightButtonRes()I
ldc_w 2130839684
ireturn
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "APPID"
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove/generalId J
l2i
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "APPCODE"
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove/appcode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove/name Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 0
ldc com/nd/android/u/cloud/customapplication/activity/AppSettingActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
