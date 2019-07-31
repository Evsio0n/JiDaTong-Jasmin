.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
.inner class inner com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$1
.inner class static ViewHolder inner com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder outer com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindData(ILcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mIntro Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mFocus Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getMembers_total()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 2
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$1/<init>(Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/getList()Ljava/util/List;
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
new com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/community_category_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_community_subitem_scope_people I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mFocus Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_community_subitem_scope_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mIntro Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_community_subitem_scope_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_community_subitem_scope_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/rl_community_subitem_scope I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/bindData(ILcom/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter$ViewHolder
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
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryAdapter/isDuplicate(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
