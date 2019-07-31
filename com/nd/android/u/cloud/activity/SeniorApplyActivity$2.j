.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity$2
.super android/content/BroadcastReceiver
.enclosing method com/nd/android/u/cloud/activity/SeniorApplyActivity
.inner class inner com/nd/android/u/cloud/activity/SeniorApplyActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 2
ldc "code"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
tableswitch 1000
L0
default : L1
L1:
return
L0:
aload 2
ldc "headUri"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 2
ldc "headUri"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/avatarUri Landroid/net/Uri;
L2:
aload 2
ldc "showUriStr"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 2
ldc "showUriStr"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity/showAvatarUri Landroid/net/Uri;
L3:
new com/android/u/weibo/cropimage/business/UpdateImage
dup
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/avatarUri Landroid/net/Uri;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity/showAvatarUri Landroid/net/Uri;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$2000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/os/Handler;
invokespecial com/android/u/weibo/cropimage/business/UpdateImage/<init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Handler;)V
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage/update()V
return
.limit locals 3
.limit stack 6
.end method
