.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity
.inner class inner com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 2
L0
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
ifnull L1
aload 1
getfield android/os/Message/what I
iconst_3
if_icmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
iconst_4
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
iconst_3
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method
