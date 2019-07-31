.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter
.super android/widget/BaseAdapter
.inner class private RecentContactListAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment

.field private 'mCtx' Landroid/content/Context;

.field private 'mForwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;

.method public <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
return
.limit locals 4
.limit stack 2
.end method

.method private isNormalUse()Z
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/<init>(Landroid/content/Context;)V
astore 2
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/getItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 3
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
aload 3
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/isNormalUse()Z
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
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L0:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 7
aload 7
instanceof com/nd/android/u/bean4xy/AppContactItem
ifeq L0
aload 7
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/CONTACT_SENIOR_APPID I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 6
invokeinterface java/util/Iterator/remove()V 0
goto L0
L1:
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/isNormalUse()Z
ifne L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L3:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 2
iload 2
ifeq L3
iload 2
iconst_1
if_icmpeq L3
aload 6
invokeinterface java/util/Iterator/remove()V 0
goto L3
L2:
iconst_0
istore 5
iconst_0
istore 4
aconst_null
astore 7
iconst_0
istore 2
L4:
iload 5
istore 3
aload 7
astore 6
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L5
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 6
aload 6
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L6
aload 6
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 8
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L6
new com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
dup
invokespecial com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/<init>()V
astore 6
aload 6
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getLastContactTime()J
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/setLastContactTime(J)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mCtx Landroid/content/Context;
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getLastMsgContent()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/setLastMsgContent(Ljava/lang/String;)V
iload 2
istore 3
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment$RecentContactListAdapter/mList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
iload 4
istore 2
L7:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 8
aload 8
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L7
aload 8
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 8
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L7
iload 2
aload 8
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getUnreadCount()I
iadd
istore 2
aload 7
invokeinterface java/util/Iterator/remove()V 0
goto L7
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L8:
aload 6
ifnull L9
iload 2
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
if_icmple L10
aload 6
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/setUnreadCount(I)V
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/HAS_READ_KEY Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
L11:
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
aload 1
iload 3
aload 6
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L9:
return
L10:
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/HAS_READ_KEY Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifne L12
aload 6
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/setUnreadCount(I)V
goto L11
L12:
aload 6
iconst_0
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/setUnreadCount(I)V
goto L11
.limit locals 9
.limit stack 4
.end method
