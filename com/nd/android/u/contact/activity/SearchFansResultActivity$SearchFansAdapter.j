.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter
.super android/widget/BaseAdapter
.inner class private SearchFansAdapter inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter outer com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFansResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
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
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
astore 4
aload 2
ifnonnull L0
new com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder
dup
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$layout/search_friends_list_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friend_photo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/ib_concern_friend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_friend_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mTvFriendName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_friend_signature I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friend_gender I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mTvFriendName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mTvFriendSignature Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
iload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
iconst_3
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 4
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
ifne L2
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L3:
iconst_2
aload 4
invokevirtual com/product/android/commonInterface/weibo/Idol/getIsFollowing()I
if_icmpne L4
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_concern_friend I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L5:
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 4
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
new com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;I)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
iconst_1
aload 4
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
if_icmpne L6
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/friend_gender_male I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L3
L6:
iconst_2
aload 4
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
if_icmpne L3
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIvFriendGender Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/friend_gender_female I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L3
L4:
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$ViewHolder/mIbConcernFriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 5
.limit stack 5
.end method
