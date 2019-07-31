.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/adapter/SearchListAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$1
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$2
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$3
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$4
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$5
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$6
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$7
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$8
.inner class inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$9
.inner class public static ViewHolder inner com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder outer com/nd/schoollife/ui/square/adapter/SearchListAdapter

.field public static final 'SEARCH_RESULT_POST_CONTENT_TEXT_COUNT' I = 40


.field private static final 'TAG' Ljava/lang/String;

.field private 'mComunityData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mKey' Ljava/lang/String;

.field private 'mPostData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;>;"

.field private 'mTeamData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.field private 'mTotalComunityNum' I

.field private 'mTotalPostNum' I

.field private 'mTotalTeamNum' I

.field private 'showGroupTitle' Z

.field private 'showMoreBtn' Z

.method static <clinit>()V
ldc com/nd/schoollife/ui/square/adapter/SearchListAdapter
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc ""
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showMoreBtn Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showGroupTitle Z
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindCommunityData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;I)V
aload 3
ifnonnull L0
aload 0
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindEmptyView(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
return
L0:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 6
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showGroupTitle Z
ifeq L1
iload 1
ifne L1
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleTextView Landroid/widget/TextView;
aload 6
getstatic com/nd/schoollife/R$string/str_square_search_item_community_type I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleNumTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalComunityNum I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeHeader Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeHeader Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeIntro Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeName Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePeople Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getMembers_total()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4eba"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$3
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$3/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
iload 4
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalComunityNum I
if_icmpge L3
iconst_1
istore 5
L4:
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showMoreBtn Z
ifeq L5
iload 5
ifeq L5
iload 1
iload 4
iconst_1
isub
if_icmpne L5
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
ldc "\u67e5\u770b\u66f4\u591a\u793e\u56e2\u7ed3\u679c"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$4
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$4/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePlus Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_community_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
ldc ""
astore 6
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getTags()Ljava/util/ArrayList;
astore 3
aload 3
ifnull L7
aload 3
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L7
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L8:
aload 6
astore 3
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
L9:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
bipush 6
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/extractString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
aload 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L2
L3:
iconst_0
istore 5
goto L4
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L6
L7:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 8
.limit stack 5
.end method

.method private bindData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
iconst_0
istore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
L0:
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
ifnull L1
iload 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 4
L2:
iconst_0
istore 5
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
ifnull L3
iload 4
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 5
L3:
iload 1
iload 3
if_icmpge L4
aload 0
iload 1
aload 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/TeamInfoBean
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindTeamData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;I)V
return
L1:
iload 3
istore 4
goto L2
L4:
iload 1
iload 4
if_icmpge L5
iload 1
iload 3
isub
istore 1
aload 0
iload 1
aload 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindCommunityData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;I)V
return
L5:
iload 1
iload 5
if_icmpge L6
iload 1
iload 4
isub
istore 1
aload 0
iload 1
aload 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindPostData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;I)V
return
L6:
aload 0
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindEmptyView(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
return
.limit locals 6
.limit stack 5
.end method

.method private bindEmptyView(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
aload 1
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 1
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 1
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private bindPostData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;I)V
aload 3
ifnull L0
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnonnull L1
L0:
aload 0
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindEmptyView(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
return
L1:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 5
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 8
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
astore 7
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showGroupTitle Z
ifeq L2
iload 1
ifne L2
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleTextView Landroid/widget/TextView;
aload 8
getstatic com/nd/schoollife/R$string/str_square_search_item_post_type I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleNumTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalPostNum I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showMoreBtn Z
ifeq L4
iload 4
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalPostNum I
if_icmpge L4
iload 1
iload 4
iconst_1
isub
if_icmpne L4
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
ldc "\u67e5\u770b\u66f4\u591a\u5e16\u5b50\u7ed3\u679c"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$5
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$5/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostContent Lcom/product/android/ui/widget/ProTextView;
aload 8
getstatic com/nd/schoollife/R$color/cor_square_mygroup_item_content_tv I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/product/android/ui/widget/ProTextView/setTextColor(I)V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/getMatch_text()Ljava/lang/String;
astore 8
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostContent Lcom/product/android/ui/widget/ProTextView;
ldc_w 14.0F
invokevirtual com/product/android/ui/widget/ProTextView/setTextSize(F)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostContent Lcom/product/android/ui/widget/ProTextView;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
aload 8
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/resolveSearchPostContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostContent Lcom/product/android/ui/widget/ProTextView;
invokestatic com/product/android/ui/widget/ProTextView$LocalLinkMovementMethod/getInstance()Lcom/product/android/ui/widget/ProTextView$LocalLinkMovementMethod;
invokevirtual com/product/android/ui/widget/ProTextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostHotTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getHeat()F
invokestatic java/lang/String/valueOf(F)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u2103"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
ifnull L6
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostName Landroid/widget/TextView;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
iconst_5
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/cutStringBySize(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostName Landroid/widget/TextView;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$6
dup
aload 0
aload 6
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$6/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L7:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$7
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$7/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
ifnull L8
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
istore 1
iload 1
bipush 8
if_icmpne L9
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$8
dup
aload 0
aload 7
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$8/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L10:
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
ifnull L11
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L11
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostPhoto Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L12:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeSignal Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
L4:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L5
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostName Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L7
L9:
iload 1
bipush 16
if_icmpne L10
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$9
dup
aload 0
aload 7
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$9/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L10
L8:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L10
L11:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostPhoto Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L12
.limit locals 9
.limit stack 6
.end method

.method private bindTeamData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;I)V
aload 3
ifnonnull L0
aload 0
aload 2
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindEmptyView(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
return
L0:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 6
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showGroupTitle Z
ifeq L1
iload 1
ifne L1
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleTextView Landroid/widget/TextView;
aload 6
getstatic com/nd/schoollife/R$string/str_square_search_item_team_type I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleNumTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\uff08"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalTeamNum I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\uff09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeHeader Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getAvatar()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeHeader Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getIntro()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeIntro Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/red_search I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeName Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePeople Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/structure/TeamInfoBean/getMembernum()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4eba"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$1
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$1/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
iload 4
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalTeamNum I
if_icmpge L3
iconst_1
istore 5
L4:
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showMoreBtn Z
ifeq L5
iload 5
ifeq L5
iload 1
iload 4
iconst_1
isub
if_icmpne L5
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
ldc "\u67e5\u770b\u66f4\u591a\u5c0f\u7ec4\u7ed3\u679c"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$2/<init>(Lcom/nd/schoollife/ui/square/adapter/SearchListAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePlus Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_square_team_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L1:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L2
L3:
iconst_0
istore 5
goto L4
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L6
.limit locals 7
.limit stack 5
.end method

.method public addCommunityData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public addPostData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public addTeamData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/SearchListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 2
.end method

.method public getCount()I
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
ifnull L0
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iconst_0
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L0:
iload 1
istore 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
ifnull L1
iload 1
istore 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L1
iload 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 2
L1:
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
ifnull L2
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
iload 2
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L2:
getstatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCount = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
iload 1
ireturn
.limit locals 3
.limit stack 3
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
getstatic com/nd/schoollife/ui/square/adapter/SearchListAdapter/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getView::convert = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ifnonnull L0
new com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder
dup
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_search_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_search_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTypeView Landroid/view/View;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTitleNumTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_scope_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_scope_v I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeSignal Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeIntro Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_scope_plus I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePlus Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_people I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopePeople Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_search_subitem_scope I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mScopeItem Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_scope_tag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mTagTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_hot I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostHot Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_search_subitem_photo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostPhoto Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_post_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostContent Lcom/product/android/ui/widget/ProTextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_from I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostFrom Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_publish I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostPulish Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_search_subitem_hot I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostHotTextView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_search_subitem_post I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mPostItem Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/btn_square_search_subitem_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder/mMoreBtn Landroid/widget/Button;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/SearchListAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/square/adapter/SearchListAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setComunityData(Ljava/util/List;I)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;I)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mComunityData Ljava/util/List;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalComunityNum I
return
.limit locals 3
.limit stack 2
.end method

.method public setKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostData(Ljava/util/List;I)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean;>;I)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mPostData Ljava/util/List;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalPostNum I
return
.limit locals 3
.limit stack 2
.end method

.method public setShowGroupTitle(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showGroupTitle Z
return
.limit locals 2
.limit stack 2
.end method

.method public setShowMoreBtn(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/showMoreBtn Z
return
.limit locals 2
.limit stack 2
.end method

.method public setTeamData(Ljava/util/List;I)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;I)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTeamData Ljava/util/List;
aload 0
iload 2
putfield com/nd/schoollife/ui/square/adapter/SearchListAdapter/mTotalTeamNum I
return
.limit locals 3
.limit stack 2
.end method
