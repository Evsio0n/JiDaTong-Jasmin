.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/ConcernFriends
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131625260
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/getResources()Landroid/content/res/Resources;
ldc_w 2131494854
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/getResources()Landroid/content/res/Resources;
ldc_w 2131494902
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$302(Lcom/nd/android/u/cloud/activity/ConcernFriends;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$2/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$400(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
return
.limit locals 2
.limit stack 5
.end method
