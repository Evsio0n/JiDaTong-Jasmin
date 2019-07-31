.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter
.super android/widget/BaseAdapter
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/FriendsGroupManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/<init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder
dup
invokespecial com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
getstatic com/nd/android/u/contact/R$layout/friends_group_manager_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friends_concern I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_friends_group_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/mTvFriendsGroupName Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$100(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)I
if_icmpne L2
aload 3
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L3:
aload 3
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/mTvFriendsGroupName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
.limit locals 4
.limit stack 3
.end method
