.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/view/PraisePanel
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/post/view/PraisePanel$1
.inner class inner com/nd/schoollife/ui/post/view/PraisePanel$2
.inner class inner com/nd/schoollife/ui/post/view/PraisePanel$3
.inner class private GoToPraiseListViewOnClickListener inner com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener outer com/nd/schoollife/ui/post/view/PraisePanel

.field public static final 'SHOW_PRAISE_NICKNAME_DEFAULT_COUNT' I = 3


.field private 'animExpand' Landroid/view/animation/ScaleAnimation;

.field private 'isPraised' Z

.field private 'mContentText' Landroid/widget/TextView;

.field private 'mCtx' Landroid/content/Context;

.field private 'mPraiseIv' Landroid/widget/ImageView;

.field private 'mPraiseLayout' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PraisePanel/isPraised Z
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PraisePanel/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PraisePanel/isPraised Z
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/post/view/PraisePanel/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private buildPraiseStr(JLjava/util/List;)Ljava/lang/String;
.signature "(JLjava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;)Ljava/lang/String;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/size()I 0
ifle L0
iconst_0
istore 4
L1:
iload 4
aload 3
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 3
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/UserInfoBean
astore 6
iload 4
iconst_3
if_icmpge L2
aload 6
ifnull L3
aload 5
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "\u3001"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
iload 4
iconst_1
iadd
istore 4
goto L1
L2:
aload 5
aload 5
invokevirtual java/lang/StringBuffer/length()I
iconst_1
isub
invokevirtual java/lang/StringBuffer/deleteCharAt(I)Ljava/lang/StringBuffer;
pop
lload 1
ldc2_w 3L
lcmp
ifle L4
aload 5
ldc "\u7b49"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
lload 1
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "\u4eba"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
aload 5
ldc "\u8d5e\u8fc7"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L0:
aload 5
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_praise_you_first I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
.limit locals 7
.limit stack 4
.end method

.method private initView(Landroid/content/Context;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/schoollife/R$layout/post_praise_panel_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_praise I
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/view/PraisePanel/mContentText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_praise_btn I
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_praise_btn I
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseLayout Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/post/view/PraisePanel$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PraisePanel$1/<init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/<init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new android/view/animation/ScaleAnimation
dup
fconst_1
ldc_w 1.5F
fconst_1
ldc_w 1.5F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
putfield com/nd/schoollife/ui/post/view/PraisePanel/animExpand Landroid/view/animation/ScaleAnimation;
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/animExpand Landroid/view/animation/ScaleAnimation;
ldc2_w 300L
invokevirtual android/view/animation/ScaleAnimation/setDuration(J)V
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/animExpand Landroid/view/animation/ScaleAnimation;
new com/nd/schoollife/ui/post/view/PraisePanel$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PraisePanel$2/<init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;)V
invokevirtual android/view/animation/ScaleAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return
.limit locals 2
.limit stack 11
.end method

.method public fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/getTag()Ljava/lang/Object;
ifnonnull L0
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/setTag(Ljava/lang/Object;)V
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
lconst_0
lcmp
ifle L1
aload 0
new com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener
dup
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/view/PraisePanel$GoToPraiseListViewOnClickListener/<init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mContentText Landroid/widget/TextView;
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraisor()Ljava/util/List;
invokespecial com/nd/schoollife/ui/post/view/PraisePanel/buildPraiseStr(JLjava/util/List;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
iconst_1
if_icmpne L3
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/view/PraisePanel/isPraised Z
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L1:
aload 0
new com/nd/schoollife/ui/post/view/PraisePanel$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/PraisePanel$3/<init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;)V
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L2
L3:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/view/PraisePanel/isPraised Z
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 5
.end method

.method public setPraiseOnClickListerner(Landroid/view/View$OnClickListener;)V
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public showPraiseIvAnima(Z)V
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/animExpand Landroid/view/animation/ScaleAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
iload 1
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mPraiseIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/R$drawable/ic_common_praise_pressed I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public updatePraisePanel(ZJLjava/lang/String;Ljava/util/List;J)V
.signature "(ZJLjava/lang/String;Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;J)V"
aload 0
iload 1
invokevirtual com/nd/schoollife/ui/post/view/PraisePanel/showPraiseIvAnima(Z)V
aload 5
ifnull L0
iload 1
ifeq L1
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/structure/UserInfoBean
astore 8
lload 2
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
lcmp
ifne L2
aload 5
aload 8
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L3:
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel/mContentText Landroid/widget/TextView;
aload 0
lload 6
aload 5
invokespecial com/nd/schoollife/ui/post/view/PraisePanel/buildPraiseStr(JLjava/util/List;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
L1:
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 8
aload 8
lload 2
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 8
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 5
iconst_0
aload 8
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
goto L3
.limit locals 9
.limit stack 5
.end method
