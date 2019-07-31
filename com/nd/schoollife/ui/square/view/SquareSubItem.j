.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/SquareSubItem
.super java/lang/Object
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$1
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$2
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$3
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$4
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$5
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$6
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$7
.inner class inner com/nd/schoollife/ui/square/view/SquareSubItem$8

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field 'mLeftMoreIV' Landroid/widget/ImageView;

.field 'mLeftMoreRL' Landroid/widget/RelativeLayout;

.field 'mLeftTitleTV' Landroid/widget/TextView;

.field 'mLeftTypeIV' Landroid/widget/ImageView;

.field 'mLinearLayout' Landroid/widget/LinearLayout;

.field 'mParentView' Landroid/view/View;

.field 'mRightMoreIV' Landroid/widget/ImageView;

.field 'mRightMoreRL' Landroid/widget/RelativeLayout;

.field 'mRightTitleTV' Landroid/widget/TextView;

.field 'mRightTypeIV' Landroid/widget/ImageView;

.field 'mTitleRL' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mInflater Landroid/view/LayoutInflater;
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/ll_square_sub_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_square_item_left_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_square_item_left_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_square_item_left_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_square_item_right_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_square_item_right_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTitleTV Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_square_item_right_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTypeIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/rl_square_item_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mTitleRL Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/ibtn_square_item_left_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreRL Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
getstatic com/nd/schoollife/R$id/ibtn_square_item_right_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreRL Landroid/widget/RelativeLayout;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getParentView()Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCommunityData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mTitleRL Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$drawable/bg_square_item_community I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
aload 3
getstatic com/nd/schoollife/R$string/str_square_hot_community I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTitleTV Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/view/SquareSubItem$5
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$5/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTypeIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_item_type_community I
invokevirtual android/widget/ImageView/setImageResource(I)V
iconst_0
istore 2
L3:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 3
aload 3
ifnonnull L4
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_subitem_left I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
iload 2
ifeq L6
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 5
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 6
aload 6
bipush 10
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 6
bipush 10
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 5
aload 6
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 5
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_light_gray I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 4
new com/nd/schoollife/ui/square/view/SquareSubItem$6
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$6/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 4
getstatic com/nd/schoollife/R$id/iv_square_subitem_left_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 5
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 5
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 4
getstatic com/nd/schoollife/R$id/iv_square_subitem_like I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
getstatic com/nd/schoollife/R$drawable/ic_square_community_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_info I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_like I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getMembers_total()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u4eba"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 7
.limit stack 5
.end method

.method public setPostData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mTitleRL Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$drawable/bg_square_item_post I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
aload 3
getstatic com/nd/schoollife/R$string/str_square_hot_post I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTitleTV Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/view/SquareSubItem$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$1/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTypeIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_item_type_post I
invokevirtual android/widget/ImageView/setImageResource(I)V
iconst_0
istore 2
L3:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 3
aload 3
ifnonnull L4
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
astore 4
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 6
iload 2
ifeq L6
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 5
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 7
aload 7
bipush 10
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 7
bipush 10
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 5
aload 7
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 5
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_light_gray I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_subitem I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 5
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 5
new com/nd/schoollife/ui/square/view/SquareSubItem$2
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$2/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 5
getstatic com/nd/schoollife/R$id/iv_square_subitem_right_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 7
aload 6
ifnull L7
aload 5
getstatic com/nd/schoollife/R$id/tv_square_subitem_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 8
aload 8
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
iconst_5
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/cutStringBySize(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 8
new com/nd/schoollife/ui/square/view/SquareSubItem$3
dup
aload 0
aload 6
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$3/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 7
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L7:
aload 5
getstatic com/nd/schoollife/R$id/iv_square_subitem_left_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 6
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
astore 7
aload 7
ifnull L8
aload 7
invokeinterface java/util/List/isEmpty()Z 0
ifeq L9
L8:
aload 6
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L10:
aload 5
getstatic com/nd/schoollife/R$id/tv_square_subitem_info I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
astore 6
aload 6
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
bipush 90
aload 6
invokevirtual com/product/android/ui/widget/ProTextView/getTextSize()F
iconst_2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/dealLongPost(Landroid/content/Context;Ljava/lang/String;IFI)Landroid/text/SpannableString;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 6
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 4
ifnull L11
aload 5
getstatic com/nd/schoollife/R$id/tv_square_subitem_from I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 6
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
new com/nd/schoollife/ui/square/view/SquareSubItem$4
dup
aload 0
aload 4
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$4/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L11:
aload 5
getstatic com/nd/schoollife/R$id/tv_square_subitem_like I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getHeat()F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc "\u2103"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
L9:
aload 6
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L10
.limit locals 9
.limit stack 6
.end method

.method public setTeamData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mParentView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mTitleRL Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$drawable/bg_square_item_team I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTitleTV Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightMoreIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTitleTV Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTypeIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftTypeIV Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTypeIV Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_item_type_team I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLeftMoreRL Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/view/SquareSubItem$7
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$7/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mRightTitleTV Landroid/widget/TextView;
aload 3
getstatic com/nd/schoollife/R$string/str_square_hot_team I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 2
L3:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
astore 3
aload 3
ifnonnull L4
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
iload 2
ifeq L6
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 4
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 5
aload 5
bipush 10
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 5
bipush 10
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 4
aload 5
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_light_gray I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_subitem_right I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 0
getfield com/nd/schoollife/ui/square/view/SquareSubItem/mLinearLayout Landroid/widget/LinearLayout;
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 4
new com/nd/schoollife/ui/square/view/SquareSubItem$8
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem$8/<init>(Lcom/nd/schoollife/ui/square/view/SquareSubItem;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 4
getstatic com/nd/schoollife/R$id/iv_square_subitem_right_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 5
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 4
getstatic com/nd/schoollife/R$id/iv_square_subitem_like I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
getstatic com/nd/schoollife/R$drawable/ic_square_team_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_info I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getIntro()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getstatic com/nd/schoollife/R$id/tv_square_subitem_like I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getMembernum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u4eba"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 6
.limit stack 5
.end method
