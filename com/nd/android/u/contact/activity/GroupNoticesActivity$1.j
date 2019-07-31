.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupNoticesActivity$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/activity/GroupNoticesActivity
.inner class inner com/nd/android/u/contact/activity/GroupNoticesActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupNoticesActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupNoticesActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$000(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$100(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
.limit locals 4
.limit stack 2
.end method
