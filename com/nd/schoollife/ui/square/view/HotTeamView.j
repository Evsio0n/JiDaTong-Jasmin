.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/HotTeamView
.super android/widget/FrameLayout
.implements android/view/View$OnClickListener

.field private 'mAllCategoryTV' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.field private 'mHasDataLL' Landroid/widget/LinearLayout;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mNoDataLL' Landroid/widget/LinearLayout;

.field private 'mTeamInfoLL' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/schoollife/ui/square/view/HotTeamView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/schoollife/ui/square/view/HotTeamView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/view/HotTeamView/mInflater Landroid/view/LayoutInflater;
aload 0
invokespecial com/nd/schoollife/ui/square/view/HotTeamView/initView()V
return
.limit locals 4
.limit stack 4
.end method

.method private initView()V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_hot_team_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/HotTeamView/addView(Landroid/view/View;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_hot_team_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/HotTeamView/mNoDataLL Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_hot_team_hasdata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/HotTeamView/mHasDataLL Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_hot_team_container I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/HotTeamView/mTeamInfoLL Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_hot_team_category_tip I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/HotTeamView/mAllCategoryTV Landroid/widget/TextView;
aload 1
getstatic com/nd/schoollife/R$id/btn_square_hot_team_find_team I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_square_hot_team_find_team I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/CreateTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mData Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L3
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mHasDataLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mNoDataLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mTeamInfoLL Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mHasDataLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mNoDataLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
putfield com/nd/schoollife/ui/square/view/HotTeamView/mData Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmpge L3
new com/nd/schoollife/ui/square/view/HotTeamItemView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/HotTeamItemView/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mData Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
invokevirtual com/nd/schoollife/ui/square/view/HotTeamItemView/setData(Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mTeamInfoLL Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 2
iload 3
iconst_1
isub
if_icmpeq L5
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 1
aload 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_post_detail_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mTeamInfoLL Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
.limit locals 4
.limit stack 5
.end method

.method public showAllCategory(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mAllCategoryTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamView/mAllCategoryTV Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
