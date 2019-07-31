.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter
.super android/widget/BaseAdapter
.inner class inner com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1
.inner class ViewHolder inner com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder outer com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mReplyInfoList' Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mContext Landroid/content/Context;
aload 0
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder;
new com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/<init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;)V
astore 2
aload 2
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/imgAvatar Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 2
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 2
aload 1
getstatic com/android/u/weibo/R$id/comment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtComment Lcom/product/android/ui/widget/ProTextView;
aload 2
aload 1
getstatic com/android/u/weibo/R$id/source_tweet I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtSourceTweet Lcom/product/android/ui/widget/ProTextView;
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public addData(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnonnull L1
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L0
iload 1
iflt L0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getLastItem()Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
areturn
.limit locals 1
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aconst_null
astore 3
aload 2
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/message_comment_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 0
aload 4
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/createViewHolder(Landroid/view/View;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder;
astore 3
aload 4
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
astore 2
aload 3
ifnonnull L1
aload 4
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder
astore 2
L1:
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/getItem(I)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 3
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/imgAvatar Landroid/widget/ImageView;
new com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1
dup
aload 0
aload 3
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$1/<init>(Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mContext Landroid/content/Context;
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtComment Lcom/product/android/ui/widget/ProTextView;
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/contentSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtComment Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtSourceTweet Lcom/product/android/ui/widget/ProTextView;
aload 3
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/sourceToSS Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter$ViewHolder/txtSourceTweet Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public setData(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/clear()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/mReplyInfoList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/addAll(Ljava/util/Collection;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
