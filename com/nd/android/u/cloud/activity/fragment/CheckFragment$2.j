.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/CheckFragment$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/fragment/CheckFragment/initComponent(Landroid/view/View;)V
.inner class inner com/nd/android/u/cloud/activity/fragment/CheckFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;

.method <init>(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment$2/this$0 Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$2/this$0 Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method
