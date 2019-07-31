.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/adapter/MyGroupAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/schoollife/ui/square/adapter/MyGroupAdapter$1
.inner class inner com/nd/schoollife/ui/square/adapter/MyGroupAdapter$2
.inner class private static ViewHolder inner com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder outer com/nd/schoollife/ui/square/adapter/MyGroupAdapter

.field private 'mCommunityData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mTagType' I

.field private 'mTeamData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTeamData Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTagType I
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindCommunityData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
iload 1
ifne L0
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTagType I
tableswitch 0
L1
L2
default : L3
L3:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeImageView Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_mygroup_join_community I
invokevirtual android/widget/ImageView/setImageResource(I)V
L4:
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 3
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShortInfo Landroid/widget/TextView;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
iconst_3
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getRole()I
if_icmpeq L5
iconst_2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getRole()I
if_icmpne L6
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShieldHeader Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L7:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/MyGroupAdapter$2
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter$2/<init>(Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeTextView Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/square_mygroup_my_join_community I
invokevirtual android/widget/TextView/setText(I)V
goto L3
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeTextView Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/square_mygroup_my_manage_community I
invokevirtual android/widget/TextView/setText(I)V
goto L3
L0:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L4
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShieldHeader Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L7
.limit locals 4
.limit stack 5
.end method

.method private bindData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iload 1
iload 3
if_icmpge L0
aload 0
iload 1
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter/bindCommunityData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
return
L0:
aload 0
iload 1
iload 3
isub
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter/bindTeamData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
return
.limit locals 4
.limit stack 3
.end method

.method private bindTeamData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
iload 1
ifne L0
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTagType I
tableswitch 0
L1
L2
default : L3
L3:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeImageView Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_mygroup_focus_team I
invokevirtual android/widget/ImageView/setImageResource(I)V
L4:
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTeamData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
astore 3
iconst_2
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getGrade()I
if_icmpeq L5
iconst_3
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getGrade()I
if_icmpne L6
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShieldHeader Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L7:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShortInfo Landroid/widget/TextView;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/MyGroupAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter$1/<init>(Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeTextView Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/square_mygroup_my_join_team I
invokevirtual android/widget/TextView/setText(I)V
goto L3
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeTextView Landroid/widget/TextView;
getstatic com/nd/schoollife/R$string/square_mygroup_my_manage_team I
invokevirtual android/widget/TextView/setText(I)V
goto L3
L0:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L4
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShieldHeader Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L7
.limit locals 4
.limit stack 5
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/size()I 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
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
new com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$1;)V
astore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_group_sub_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_mygroup_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_mygroup_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_mygroup_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_mygroup_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeImageView Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_mygroup_info I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShortInfo Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_mygroup_header_shield I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mShieldHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/rl_square_mygroup I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mItemRL Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_mygroup_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder/mTypeLL Landroid/widget/LinearLayout;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/square/adapter/MyGroupAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setCommunityData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mCommunityData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/MyGroupAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTeamData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/MyGroupAdapter/mTeamData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/MyGroupAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
