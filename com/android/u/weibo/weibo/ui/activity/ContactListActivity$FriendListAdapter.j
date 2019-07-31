.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter
.super android/widget/BaseAdapter
.inner class private FriendListAdapter inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter outer com/android/u/weibo/weibo/ui/activity/ContactListActivity

.field private 'mInflater' Landroid/view/LayoutInflater;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/product/android/commonInterface/chat/SearchContract;
iload 1
iflt L0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/chat/SearchContract
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/getItem(I)Lcom/product/android/commonInterface/chat/SearchContract;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/weibo_at_search_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/getItem(I)Lcom/product/android/commonInterface/chat/SearchContract;
astore 2
aload 3
getstatic com/android/u/weibo/R$id/user_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContract/getSysavatar()I
aload 4
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
getstatic com/android/u/weibo/R$id/user_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method
