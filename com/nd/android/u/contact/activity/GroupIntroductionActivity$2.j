.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupIntroductionActivity$2
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/activity/GroupIntroductionActivity
.inner class inner com/nd/android/u/contact/activity/GroupIntroductionActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
iload 1
sipush 2003
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;
invokestatic com/nd/android/u/contact/activity/GroupIntroductionActivity/access$000(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;
invokestatic com/nd/android/u/contact/activity/GroupIntroductionActivity/access$100(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
L0:
return
.limit locals 4
.limit stack 2
.end method
