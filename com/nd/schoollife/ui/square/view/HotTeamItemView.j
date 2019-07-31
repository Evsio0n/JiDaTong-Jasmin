.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/HotTeamItemView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;

.field private 'mFocusTV' Landroid/widget/TextView;

.field private 'mHeaderIV' Landroid/widget/ImageView;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIntroTV' Landroid/widget/TextView;

.field private 'mNameTV' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mInflater Landroid/view/LayoutInflater;
aload 0
invokespecial com/nd/schoollife/ui/square/view/HotTeamItemView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_hot_team_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/HotTeamItemView/addView(Landroid/view/View;)V
aload 1
getstatic com/nd/schoollife/R$id/rl_square_hot_team_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_hot_team_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mHeaderIV Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_hot_team_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mIntroTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_hot_team_focus I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mFocusTV Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_hot_team_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mNameTV Landroid/widget/TextView;
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/rl_square_hot_team_item I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mContext Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mData Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public setData(Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/HotTeamItemView/mData Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mIntroTV Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mData Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mFocusTV Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mData Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getMembernum()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mNameTV Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mData Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/view/HotTeamItemView/mHeaderIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
return
.limit locals 2
.limit stack 4
.end method
