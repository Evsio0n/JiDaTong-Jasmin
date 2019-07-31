.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/activity/recent_contact/OfflineFragment/onActivityCreated(Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;
invokevirtual com/nd/android/u/ui/activity/recent_contact/OfflineFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/base/NetUnReachActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1/this$0 Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/OfflineFragment/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
