.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter
.super android/widget/BaseAdapter
.inner class private RecentContactListAdapter inner com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter outer com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment

.field private 'mCtx' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;

.method public <init>(Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/this$0 Lcom/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getLastUnreadItem()I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
iconst_m1
istore 2
L2:
iload 2
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 1
L3:
iload 1
iflt L4
iload 1
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
ifne L2
iload 1
iconst_1
isub
istore 1
goto L3
L4:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getNextUnreadItem(I)I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
iconst_m1
istore 2
L2:
iload 2
ireturn
L1:
iload 1
istore 2
iload 1
ifge L3
iconst_0
istore 2
L3:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iload 2
iconst_1
iadd
istore 1
L4:
iload 1
iload 3
if_icmpge L5
iload 1
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
ifne L2
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
ldc_w 2147483647
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/ui/widge/RecentContactItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/<init>(Landroid/content/Context;)V
astore 2
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 3
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
aload 3
iconst_1
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/updateContent(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
aload 2
areturn
L0:
aload 2
checkcast com/nd/android/u/ui/widge/RecentContactItemView
astore 2
goto L1
.limit locals 4
.limit stack 4
.end method

.method public setParam(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/SubscribePublicNumberRecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
