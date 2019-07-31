.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/HelpActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/HelpActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/HelpActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/HelpActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/HelpActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/HelpActivity$3/this$0 Lcom/nd/android/u/cloud/activity/HelpActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new com/nd/android/u/cloud/helper/GetNewVersionProgress
dup
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity$3/this$0 Lcom/nd/android/u/cloud/activity/HelpActivity;
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity$3/this$0 Lcom/nd/android/u/cloud/activity/HelpActivity;
invokestatic com/nd/android/u/cloud/activity/HelpActivity/access$200(Lcom/nd/android/u/cloud/activity/HelpActivity;)Landroid/os/Handler;
ldc_w 2131493227
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress/<init>(Landroid/app/Activity;Landroid/os/Handler;I)V
invokevirtual com/nd/android/u/cloud/helper/GetNewVersionProgress/Execute()V
return
.limit locals 2
.limit stack 5
.end method
