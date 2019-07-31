.bytecode 50.0
.class public synchronized com/nd/album/ui/widget/AlbumTaskOverView
.super android/widget/LinearLayout
.inner class inner com/nd/album/ui/widget/AlbumTaskOverView$1
.inner class inner com/nd/album/ui/widget/AlbumTaskOverView$2
.inner class inner com/nd/album/ui/widget/AlbumTaskOverView$3

.field public static final 'MSG_BEGIN_TO_HIDE' I = 2013


.field private final 'DELAY_MILI_SECONDS' I

.field private 'clickListener' Landroid/view/View$OnClickListener;

.field 'handler' Landroid/os/Handler;

.field private 'mContext' Landroid/content/Context;

.field private 'rlFirst' Landroid/widget/RelativeLayout;

.field private 'rlSecond' Landroid/widget/RelativeLayout;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
sipush 4000
putfield com/nd/album/ui/widget/AlbumTaskOverView/DELAY_MILI_SECONDS I
aload 0
new com/nd/album/ui/widget/AlbumTaskOverView$1
dup
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView$1/<init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;)V
putfield com/nd/album/ui/widget/AlbumTaskOverView/clickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/album/ui/widget/AlbumTaskOverView$3
dup
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView$3/<init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;)V
putfield com/nd/album/ui/widget/AlbumTaskOverView/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/album/ui/widget/AlbumTaskOverView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView/initView()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
sipush 4000
putfield com/nd/album/ui/widget/AlbumTaskOverView/DELAY_MILI_SECONDS I
aload 0
new com/nd/album/ui/widget/AlbumTaskOverView$1
dup
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView$1/<init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;)V
putfield com/nd/album/ui/widget/AlbumTaskOverView/clickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/album/ui/widget/AlbumTaskOverView$3
dup
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView$3/<init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;)V
putfield com/nd/album/ui/widget/AlbumTaskOverView/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/album/ui/widget/AlbumTaskOverView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/album/ui/widget/AlbumTaskOverView/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/album/ui/widget/AlbumTaskOverView;)Landroid/content/Context;
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/task_over_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/album/R$id/rl_first I
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/album/ui/widget/AlbumTaskOverView/rlFirst Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/album/R$id/rl_second I
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/album/ui/widget/AlbumTaskOverView/rlSecond Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView/clickListener Landroid/view/View$OnClickListener;
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public beginAnimate(Z)V
iload 1
ifeq L0
aload 0
iconst_0
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setVisibility(I)V
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
ldc_w -1.0F
iconst_1
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 2
L1:
aload 2
ldc2_w 800L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 2
new com/nd/album/ui/widget/AlbumTaskOverView$2
dup
aload 0
iload 1
invokespecial com/nd/album/ui/widget/AlbumTaskOverView$2/<init>(Lcom/nd/album/ui/widget/AlbumTaskOverView;Z)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 2
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
fconst_0
iconst_1
ldc_w -1.0F
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 2
goto L1
.limit locals 3
.limit stack 10
.end method

.method public setFirstLineVisibility(I)V
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView/rlFirst Landroid/widget/RelativeLayout;
iload 1
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSecondLineVisibility(I)V
aload 0
getfield com/nd/album/ui/widget/AlbumTaskOverView/rlSecond Landroid/widget/RelativeLayout;
iload 1
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
