.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/SearchFriendView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/contact/view/SearchFriendView$1
.inner class public static abstract interface ChangeDataCallback inner com/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback outer com/nd/android/u/contact/view/SearchFriendView
.inner class private MyOnClickListeren inner com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren outer com/nd/android/u/contact/view/SearchFriendView

.field private 'doAddFriend' Landroid/view/View$OnClickListener;

.field private 'faceImg' Landroid/widget/ImageView;

.field public 'fgid' I

.field private 'fid' J

.field private 'friendConfigOnClickListeren' Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;

.field private 'iconView' Landroid/widget/ImageView;

.field private 'mCallBack' Lcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;

.field private 'mContext' Landroid/content/Context;

.field protected 'mIsBackpackSendflower' Z

.field private 'mType' I

.field private 'myonclicklisteren' Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;

.field private 'signText' Landroid/widget/TextView;

.field private 'userLayout' Landroid/widget/RelativeLayout;

.field private 'usernameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;ILcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
aload 0
new com/nd/android/u/contact/view/SearchFriendView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/SearchFriendView$1/<init>(Lcom/nd/android/u/contact/view/SearchFriendView;)V
putfield com/nd/android/u/contact/view/SearchFriendView/doAddFriend Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/view/SearchFriendView/mType I
aload 0
aload 3
putfield com/nd/android/u/contact/view/SearchFriendView/mCallBack Lcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;
aload 0
invokevirtual com/nd/android/u/contact/view/SearchFriendView/getView()V
return
.limit locals 4
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;IZLcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
aload 0
new com/nd/android/u/contact/view/SearchFriendView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/SearchFriendView$1/<init>(Lcom/nd/android/u/contact/view/SearchFriendView;)V
putfield com/nd/android/u/contact/view/SearchFriendView/doAddFriend Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/view/SearchFriendView/mType I
aload 0
aload 4
putfield com/nd/android/u/contact/view/SearchFriendView/mCallBack Lcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;
aload 0
iload 3
putfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
aload 0
invokevirtual com/nd/android/u/contact/view/SearchFriendView/getView()V
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/SearchFriendView;)J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/view/SearchFriendView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mType I
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_friendlist_friend_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_description I
invokevirtual com/nd/android/u/contact/view/SearchFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/SearchFriendView/signText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_name I
invokevirtual com/nd/android/u/contact/view/SearchFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/SearchFriendView/usernameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_layout I
invokevirtual com/nd/android/u/contact/view/SearchFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/view/SearchFriendView/userLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_img_face I
invokevirtual com/nd/android/u/contact/view/SearchFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/SearchFriendView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_img_myCursor I
invokevirtual com/nd/android/u/contact/view/SearchFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 0
new com/nd/android/u/contact/listener/FriendConfigOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/FriendConfigOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/SearchFriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
aload 0
new com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren
dup
aload 0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/<init>(Lcom/nd/android/u/contact/view/SearchFriendView;Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/SearchFriendView/myonclicklisteren Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/doAddFriend Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/userLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/myonclicklisteren Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/recommend_friend_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
goto L1
.limit locals 1
.limit stack 5
.end method

.method public final initComponentValue(JLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/usernameText Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 1
lload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/view/SearchFriendView/setAddVisible(Z)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
lload 1
invokevirtual com/nd/android/u/contact/listener/FriendConfigOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/myonclicklisteren Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;
lload 1
lload 1
aload 3
aload 4
invokevirtual com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/setFid(JJLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
return
.limit locals 5
.limit stack 7
.end method

.method public final initComponentValue(Lcom/product/android/commonInterface/chat/SearchContract;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
putfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/usernameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/signText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
lconst_0
lcmp
ifeq L1
aload 0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/isFriend()Z
invokevirtual com/nd/android/u/contact/view/SearchFriendView/setAddVisible(Z)V
L1:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
invokevirtual com/nd/android/u/contact/listener/FriendConfigOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/myonclicklisteren Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUapuid()J
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/setFid(JJLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
L0:
return
.limit locals 3
.limit stack 7
.end method

.method public final initComponentValue(Lcom/product/android/commonInterface/weibo/CommonFriendInfo;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
aload 1
ifnull L0
aload 0
aload 1
getfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
putfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/usernameText Landroid/widget/TextView;
aload 1
getfield com/product/android/commonInterface/weibo/CommonFriendInfo/nickName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
invokevirtual com/nd/android/u/contact/listener/FriendConfigOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/myonclicklisteren Lcom/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
aload 1
getfield com/product/android/commonInterface/weibo/CommonFriendInfo/nickName Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/setFid(JLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
L0:
return
.limit locals 3
.limit stack 5
.end method

.method public final initShowByFriend(JI)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fid J
lload 1
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/fgid I
iload 3
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/userLayout Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/contact/R$drawable/user_item_bg_over I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/userLayout Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/contact/R$drawable/user_item_bg I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
return
.limit locals 4
.limit stack 4
.end method

.method public final setAddVisible(Z)V
iload 1
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView/iconView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method
