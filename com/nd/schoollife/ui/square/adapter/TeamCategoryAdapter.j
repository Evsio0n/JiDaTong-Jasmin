.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$1
.inner class static ViewHolder inner com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder outer com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mData Ljava/util/List;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindData(ILcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mIntro Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mFocus Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getMembernum()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$1/<init>(Lcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mData Ljava/util/List;
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
new com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder
dup
invokespecial com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_team_category_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_people I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mFocus Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mIntro Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_scope_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/rl_square_search_subitem_scope I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/mData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/TeamCategoryAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
