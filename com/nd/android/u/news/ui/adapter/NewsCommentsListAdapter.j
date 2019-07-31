.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1
.inner class inner com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2
.inner class private CommentViewHolder inner com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder outer com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mListener' Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;

.field private 'mReplyInfoBeanList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder;
new com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/<init>(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1;)V
astore 2
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/iv_comment_avator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/ivAvator Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_comment_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvName Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_comment_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvTime Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/android/u/news/R$id/tv_comment_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvContent Landroid/widget/TextView;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public addDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addFirstItem(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
iconst_0
aload 1
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public clearDatas()V
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
ifnull L0
iload 1
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
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

.method public getLastItem()Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/news_comment_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder;
astore 3
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUid()J
iconst_3
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/ivAvator Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/ivAvator Landroid/widget/ImageView;
new com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1
dup
aload 0
aload 4
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1/<init>(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L2
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvName Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvTime Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getPost_time()J
invokestatic com/product/android/utils/TimeUtils/getLastTime(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getContent()Ljava/lang/String;
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 5
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvContent Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvContent Landroid/widget/TextView;
new com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2
dup
aload 0
aload 4
invokespecial com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/<init>(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$CommentViewHolder/tvName Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/user_exist I
invokevirtual android/widget/TextView/setText(I)V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public setCommentActionListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mListener Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setDatas(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/mReplyInfoBeanList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
