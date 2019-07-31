.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/onRefresh()V
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$3/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
iconst_2
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
.limit locals 1
.limit stack 3
.end method
