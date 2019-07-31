.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;

.field final synthetic 'val$instance' Lcom/nd/android/u/business/db/dao/RecentContactRecords;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;Lcom/nd/android/u/business/db/dao/RecentContactRecords;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2/val$instance Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$2/val$instance Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/ackMsg()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method
