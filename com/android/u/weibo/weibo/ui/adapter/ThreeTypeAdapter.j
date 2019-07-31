.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter
.super android/widget/BaseAdapter
.inner class inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1
.inner class inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$2
.inner class static synthetic inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3
.inner class public static final enum ListViewDataType inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType outer com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter
.inner class OnClickAvatarListener inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener outer com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter

.field private 'mClickAvatar' Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIsProgress' Z

.field public 'mReplyList' Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;

.field public 'mRetweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field public 'mType' Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;

.field public 'mUserList' Lcom/android/u/weibo/weibo/business/bean/PraisorList;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mIsProgress Z
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private processData(ILcom/android/u/weibo/weibo/ui/adapter/ItemViewHolder;)V
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
lstore 7
ldc ""
astore 13
lload 7
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserName(J)Ljava/lang/String;
astore 12
iconst_0
istore 4
iconst_0
istore 3
iconst_0
istore 9
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getItem(I)Ljava/lang/Object;
astore 14
aload 13
astore 11
aload 12
astore 10
iload 4
istore 1
lload 7
lstore 5
aload 14
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L0
aload 14
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 15
aload 13
astore 11
aload 12
astore 10
iload 3
istore 1
lload 7
lstore 5
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L1
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 5
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
astore 11
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
astore 10
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
istore 1
L1:
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
istore 9
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 15
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
L0:
aload 11
astore 13
aload 10
astore 12
iload 1
istore 3
lload 5
lstore 7
aload 14
instanceof com/android/u/weibo/weibo/business/bean/ReplyInfo
ifeq L2
aload 14
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 12
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L3
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 5
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
astore 11
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
astore 10
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
istore 1
L3:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/llRepost Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setClickable(Z)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lconst_0
lcmp
ifle L4
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
new com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1
dup
aload 0
aload 12
invokespecial com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$1/<init>(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
L5:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
lload 5
lstore 7
iload 1
istore 3
aload 10
astore 12
aload 11
astore 13
L2:
aload 14
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifne L6
aload 14
instanceof com/android/u/weibo/weibo/business/bean/ReplyInfo
ifeq L7
L6:
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 10
aload 10
bipush 10
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 10
iconst_1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
aload 10
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L7:
aload 14
instanceof com/android/u/weibo/weibo/business/bean/Praisor
ifeq L8
aload 14
checkcast com/android/u/weibo/weibo/business/bean/Praisor
astore 10
aload 10
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
astore 13
aload 10
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 7
aload 10
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
astore 12
aload 10
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
istore 3
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 10
aload 10
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 10
iconst_1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
aload 10
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
bipush 8
invokevirtual com/product/android/ui/widget/ProTextView/setVisibility(I)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
L8:
iload 9
ifeq L9
aload 13
iconst_m1
iconst_0
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;IZLandroid/widget/ImageView;)V
L10:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mClickAvatar Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener;
ifnonnull L11
aload 0
new com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener/<init>(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;)V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mClickAvatar Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener;
L11:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getTag()Ljava/lang/Object;
astore 10
aload 10
ifnull L12
aload 10
instanceof com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
ifeq L12
aload 10
checkcast com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
astore 10
L13:
aload 10
iload 9
putfield com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj/isOnlySina Z
aload 10
lload 7
putfield com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj/uid J
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
aload 10
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mClickAvatar Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$OnClickAvatarListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
aload 12
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L4:
aload 12
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lconst_0
lcmp
ifne L14
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/is_posing_tweet I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
L14:
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/click_to_repost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/llRepost Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/llRepost Landroid/widget/LinearLayout;
new com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$2
dup
aload 0
aload 2
aload 12
invokespecial com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$2/<init>(Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;Lcom/android/u/weibo/weibo/ui/adapter/ItemViewHolder;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L5
L9:
lload 7
iload 3
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L10
L12:
new com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj
dup
invokespecial com/android/u/weibo/weibo/ui/adapter/ClickAvatarObj/<init>()V
astore 10
goto L13
.limit locals 16
.limit stack 6
.end method

.method public addComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnonnull L0
aload 0
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iconst_0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public addCommentList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnonnull L0
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addPraiseUser(Lcom/android/u/weibo/weibo/business/bean/Praisor;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
ifnonnull L0
aload 0
new com/android/u/weibo/weibo/business/bean/PraisorList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraisorList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/isItemExist(Ljava/lang/Long;)Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
iconst_0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/add(ILjava/lang/Object;)V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public addPraiseUserList(Lcom/android/u/weibo/weibo/business/bean/PraisorList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
ifnonnull L0
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
L1:
return
L0:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 2
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/isItemExist(Ljava/lang/Long;)Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/add(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 3
.limit stack 3
.end method

.method public addRetweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L0
aload 0
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public addRetweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L0
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public deleteItem(JLcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;)V
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L2
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/iterator()Ljava/util/Iterator;
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/remove(Ljava/lang/Object;)Z
pop
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lload 1
lcmp
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 5
.limit stack 4
.end method

.method public getCount()I
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/isAdapterContentEmpty()Z
ifeq L0
iconst_1
ireturn
L0:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L1
L2
L3
default : L4
L4:
iconst_0
ireturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ireturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ireturn
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/isAdapterContentEmpty()Z
ifeq L0
L1:
aconst_null
areturn
L0:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L2
L3
L4
default : L5
L5:
aconst_null
areturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iload 1
if_icmple L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
areturn
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
iload 1
if_icmple L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
areturn
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
iload 1
if_icmple L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/get(I)Ljava/lang/Object;
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

.method public getListSize()I
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/isAdapterContentEmpty()Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L1
L2
L3
default : L4
L4:
iconst_0
ireturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ireturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ireturn
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/comment_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
new com/android/u/weibo/weibo/ui/adapter/ItemViewHolder
dup
aload 3
invokespecial com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/<init>(Landroid/view/View;)V
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/ItemViewHolder
astore 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
iload 1
iconst_1
iadd
if_icmpne L1
aload 3
getstatic com/android/u/weibo/R$drawable/card_down_selected_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
L2:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/isAdapterContentEmpty()Z
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mIsProgress Z
ifeq L4
aload 2
invokevirtual com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/showProgress()V
L5:
aload 3
areturn
L1:
aload 3
getstatic com/android/u/weibo/R$drawable/card_mid_selected_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
goto L2
L4:
iconst_0
istore 1
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L6
L7
L8
default : L9
L9:
iload 1
ifle L5
aload 2
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/setVoidImg(I)V
aload 3
areturn
L6:
getstatic com/android/u/weibo/R$drawable/void_retweet I
istore 1
goto L9
L7:
getstatic com/android/u/weibo/R$drawable/void_reply I
istore 1
goto L9
L8:
getstatic com/android/u/weibo/R$drawable/void_like I
istore 1
goto L9
L3:
aload 2
invokevirtual com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/reSetView()V
aload 0
iload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/processData(ILcom/android/u/weibo/weibo/ui/adapter/ItemViewHolder;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public isAdapterContentEmpty()Z
iconst_0
istore 1
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
iconst_1
istore 1
L4:
iload 1
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifeq L4
L5:
iconst_1
ireturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifeq L4
L6:
iconst_1
ireturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
ifnull L7
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/isEmpty()Z
ifeq L4
L7:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public modifyPraiseUser(ZJLcom/android/u/weibo/weibo/business/bean/Praisor;)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
ifnonnull L1
aload 0
new com/android/u/weibo/weibo/business/bean/PraisorList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraisorList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/isItemExist(Ljava/lang/Long;)Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
iconst_0
aload 4
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/add(ILjava/lang/Object;)V
L2:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 4
L4:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
astore 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/Praisor/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lload 2
lcmp
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mUserList Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 5
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/remove(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 6
.limit stack 4
.end method

.method public stopProgress()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mIsProgress Z
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 2
.end method

.method public updateLocalComment(JJ)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/iterator()Ljava/util/Iterator;
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 6
aload 6
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lconst_0
lcmp
ifgt L2
aload 6
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/localCreateAt J
lload 1
lcmp
ifne L2
aload 6
lload 3
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
return
.limit locals 7
.limit stack 4
.end method

.method public updateLocalComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;J)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifeq L1
L0:
return
L1:
iconst_0
istore 4
L2:
iload 4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
if_icmpge L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 5
aload 5
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
lconst_0
lcmp
ifgt L3
aload 5
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/localCreateAt J
lload 2
lcmp
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mReplyList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(ILjava/lang/Object;)V
return
L3:
iload 4
iconst_1
iadd
istore 4
goto L2
.limit locals 6
.limit stack 4
.end method

.method public updateRetweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
iconst_0
istore 6
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L0
iconst_0
istore 2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L2
aload 0
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L3:
iconst_1
istore 5
L4:
iload 5
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 2
goto L1
L2:
iload 2
ifne L5
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
goto L3
L5:
iconst_0
istore 4
iconst_0
istore 3
L6:
iload 3
iload 2
if_icmpge L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 7
iload 6
istore 5
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lcmp
ifeq L4
aload 7
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lcmp
ifle L7
iload 3
iconst_1
iadd
istore 4
L7:
iload 3
iload 2
iconst_1
isub
if_icmpne L8
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
L8:
iload 3
iconst_1
iadd
istore 3
goto L6
.limit locals 8
.limit stack 4
.end method
