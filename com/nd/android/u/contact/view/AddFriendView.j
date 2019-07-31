.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/AddFriendView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/contact/view/AddFriendView$1

.field private 'addbtn' Landroid/widget/ImageButton;

.field private 'heardImg' Landroid/widget/ImageView;

.field private 'mUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'mcontext' Landroid/content/Context;

.field private 'nicknameText' Landroid/widget/TextView;

.field private 'onClickListener' Landroid/view/View$OnClickListener;

.field private 'workidText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/contact/view/AddFriendView$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/AddFriendView$1/<init>(Lcom/nd/android/u/contact/view/AddFriendView;)V
putfield com/nd/android/u/contact/view/AddFriendView/onClickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/AddFriendView/mcontext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/AddFriendView/getView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/mUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/mcontext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method final getView()V
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_user_list_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_user_list_item_workid I
invokevirtual com/nd/android/u/contact/view/AddFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/AddFriendView/workidText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_user_list_item_nickname I
invokevirtual com/nd/android/u/contact/view/AddFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/AddFriendView/nicknameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_user_list_item_img I
invokevirtual com/nd/android/u/contact/view/AddFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/AddFriendView/heardImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_user_list_item_btn_add I
invokevirtual com/nd/android/u/contact/view/AddFriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/contact/view/AddFriendView/addbtn Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/addbtn Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/onClickListener Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/contact/view/AddFriendView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/AddFriendView/mUser Lcom/product/android/commonInterface/contact/OapUser;
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/nicknameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/workidText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/AddFriendView/heardImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifeq L0
L1:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
L0:
return
.limit locals 3
.limit stack 4
.end method
