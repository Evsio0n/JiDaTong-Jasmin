.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/adapter/CategoryItemAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1
.inner class inner com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$2
.inner class static ViewHolder inner com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder outer com/nd/schoollife/ui/square/adapter/CategoryItemAdapter

.field public static final 'ITEM_NUM' I = 2


.field private 'mContext' Landroid/content/Context;

.field 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;>;"

.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindData(ILcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder;)V
iload 1
iconst_2
imul
istore 1
iload 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mIntro1 Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mName1 Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getAvatar()Ljava/lang/String;
iconst_0
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;I)Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mHeader1 Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL1 Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$1/<init>(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
iload 1
iconst_1
iadd
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
iload 1
iconst_1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mIntro2 Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mName2 Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getAvatar()Ljava/lang/String;
iconst_0
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;I)Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mHeader2 Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL2 Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$2
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$2/<init>(Lcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter;Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL1 Landroid/widget/LinearLayout;
iconst_4
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L1
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL2 Landroid/widget/LinearLayout;
iconst_4
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 4
.limit stack 5
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
iadd
iconst_2
idiv
ireturn
.limit locals 1
.limit stack 2
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
new com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder
dup
invokespecial com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_hot_team_category_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_hot_team_category1 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL1 Landroid/widget/LinearLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_team_category_intro1 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mIntro1 Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_hot_team_category1 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mHeader1 Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_team_category_name1 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mName1 Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_hot_team_category2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mItemLL2 Landroid/widget/LinearLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_team_category_intro2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mIntro2 Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_hot_team_category2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mHeader2 Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_hot_team_category_name2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder/mName2 Landroid/widget/TextView;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/square/adapter/CategoryItemAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/mData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/CategoryItemAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 2
.end method
