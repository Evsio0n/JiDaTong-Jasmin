.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/HotCommunityAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
.inner class inner com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1
.inner class private static ViewHolder inner com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder outer com/nd/schoollife/ui/community/adapter/HotCommunityAdapter

.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/mCtx Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindData(ILcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mShortInfo Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mJoinLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mConnextLL Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getMembers_total()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mJoinTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getMembers_total()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 2
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/<init>(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public getCommunityData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/getList()Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
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
new com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1;)V
astore 3
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/community_square_hot_community_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/rl_square_hot_community_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_hot_community_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_community_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_hot_community_join I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mJoinLL Landroid/widget/LinearLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_hot_community_connect I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mConnextLL Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_community_join I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mJoinTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_community_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mShortInfo Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_community_connect I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mConnectTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_community_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder/mCotentTextView Landroid/widget/TextView;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/bindData(ILcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method protected isDuplicate(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
aload 2
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
invokevirtual com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/isDuplicate(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
