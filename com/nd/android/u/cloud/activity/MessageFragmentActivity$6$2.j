.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity$6/onContactStateChange()V
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2/this$1 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2/this$1 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6$2/this$1 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$6;
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$6/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
