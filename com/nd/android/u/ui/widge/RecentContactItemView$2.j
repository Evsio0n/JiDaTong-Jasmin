.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/RecentContactItemView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/RecentContactItemView/updateContentMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/RecentContactItemView;

.method <init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$100(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/resetMenu()V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
instanceof com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
ifeq L0
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 4
aload 4
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L1
aload 4
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 4
aload 4
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L1
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 4
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
goto L1
L2:
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
L3:
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 1
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L4
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
istore 2
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getUnreadCount()I
istore 3
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iload 2
iload 3
isub
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
L4:
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$2/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
goto L3
.limit locals 5
.limit stack 4
.end method
