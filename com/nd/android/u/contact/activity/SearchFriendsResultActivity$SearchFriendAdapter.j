.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter
.super android/widget/BaseAdapter
.inner class private SearchFriendAdapter inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter outer com/nd/android/u/contact/activity/SearchFriendsResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/<init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected changFriendState(I)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$300(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "friend"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
ldc com/nd/android/u/contact/activity/FriendsGroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/startActivityForResult(Landroid/content/Intent;I)V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
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
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 4
aload 2
ifnonnull L0
new com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder
dup
invokespecial com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
getstatic com/nd/android/u/contact/R$layout/search_friends_list_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friend_photo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/ib_concern_friend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_friend_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_friend_signature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friend_gender I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
iconst_3
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/nd/android/u/contact/util/FriendHeadImageLoader/displayCircleImage(JIBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/gender I
ifne L4
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L5:
iconst_1
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/isfollow I
if_icmpne L6
aload 4
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setChecked(Z)V
L6:
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/isChecked()Z
ifeq L7
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L8:
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
new com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1/<init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;I)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
iconst_1
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/gender I
if_icmpne L9
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/friend_gender_male I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L5
L9:
iconst_2
aload 4
getfield com/product/android/commonInterface/contact/OapUserSimple/gender I
if_icmpne L5
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/friend_gender_female I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L5
L7:
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_concern_friend I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L8
.limit locals 5
.limit stack 6
.end method
