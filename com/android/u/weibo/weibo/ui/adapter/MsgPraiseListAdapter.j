.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter
.super com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase
.inner class inner com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1
.inner class inner com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$2

.field public static final 'CONTENT_TYPE_COUNT' I = 6


.field public static final 'CONTENT_TYPE_PRAISE' I = 5


.field private 'mPraiseList' Lcom/android/u/weibo/weibo/business/bean/PraiseList;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/<init>(Landroid/app/Activity;)V
aload 0
new com/android/u/weibo/weibo/business/bean/PraiseList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraiseList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method private bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/Praise;Z)V
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
new com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1
dup
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$1/<init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;Lcom/android/u/weibo/weibo/business/bean/Praise;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/praise_your_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mActivity Landroid/app/Activity;
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praise/praise_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/sourceViewHolder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
iload 3
aload 4
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/bindTweetData(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
new com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$2
dup
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter$2/<init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;Lcom/android/u/weibo/weibo/business/bean/Praise;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 6
.limit stack 5
.end method

.method private bindTweetData(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aconst_null
astore 4
aload 3
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLongWeibo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifeq L0
aload 0
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/addGoOnRead(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Landroid/text/SpannableString;
astore 4
L0:
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 3
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 4
invokevirtual com/product/android/ui/widget/ProTextView/append(Ljava/lang/CharSequence;)V
aload 1
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
L1:
aload 0
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
iconst_3
if_icmpne L2
aload 0
aload 1
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/processImageTweet(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L2:
return
.limit locals 5
.limit stack 3
.end method

.method private createViewHolder(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/Praise;Z)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
new com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
dup
invokespecial com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/<init>()V
astore 4
aload 4
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgAvatar Landroid/widget/ImageView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtName Landroid/widget/TextView;
aload 4
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtTime Landroid/widget/TextView;
aload 1
getstatic com/android/u/weibo/R$id/delete_local_tweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/from_where I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/glance_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 4
aload 1
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 1
getstatic com/android/u/weibo/R$id/action_button_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 4
aload 1
getstatic com/android/u/weibo/R$id/retweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/retweet_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 4
aload 0
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/nextView Landroid/view/View;
aload 2
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/createViewHolderTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/sourceViewHolder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method private createViewHolderTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
new com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
dup
invokespecial com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/<init>()V
astore 3
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/avatar_frame I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/delete_local_tweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getstatic com/android/u/weibo/R$id/from_where I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 3
aload 1
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 1
getstatic com/android/u/weibo/R$id/attachment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 1
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
iconst_3
if_icmpne L0
aload 1
getstatic com/android/u/weibo/R$layout/image_stub I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 3
aload 1
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
getstatic com/android/u/weibo/R$id/img_grid_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WrapContentGridView
putfield com/android/u/weibo/weibo/ui/adapter/CommomViewHolder/imgGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
L0:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method private startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "from_msg_praiselist"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mActivity Landroid/app/Activity;
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 3
.limit stack 3
.end method

.method public addData(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnonnull L1
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public deletePraisesByTweetId(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praise
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lload 1
lcmp
ifne L1
aload 3
invokeinterface java/util/Iterator/remove()V 0
goto L1
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/android/u/weibo/weibo/business/bean/Praise;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifeq L0
iload 1
iflt L0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praise
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/Praise;
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

.method public getItemViewType(I)I
aload 0
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/Praise;
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItemViewType(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getLastItem()Lcom/android/u/weibo/weibo/business/bean/Praise;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praise
areturn
.limit locals 1
.limit stack 3
.end method

.method public volatile synthetic getLastItem()Ljava/lang/Object;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getLastItem()Lcom/android/u/weibo/weibo/business/bean/Praise;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/Praise;
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/weibo_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
aload 4
iconst_0
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/createViewHolder(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/Praise;Z)Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
astore 3
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
aload 2
aload 3
iload 1
aload 4
iconst_0
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/Praise;Z)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/CommomViewHolder
astore 3
goto L1
.limit locals 5
.limit stack 6
.end method

.method public getViewTypeCount()I
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/mPraiseList Lcom/android/u/weibo/weibo/business/bean/PraiseList;
return
.limit locals 2
.limit stack 2
.end method
