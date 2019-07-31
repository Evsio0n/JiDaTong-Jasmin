.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/FriendGroupManagerView
.super android/widget/LinearLayout
.inner class ScrollTask inner com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask outer com/nd/android/u/contact/view/FriendGroupManagerView

.field public static final 'SNAP_VELOCITY' I = 200


.field private 'isRightLayoutVisible' Z

.field private 'isSliding' Z

.field private 'leftEdge' I

.field private 'leftLayout' Landroid/view/View;

.field private 'leftLayoutParams' Landroid/view/ViewGroup$MarginLayoutParams;

.field private 'mcoContext' Landroid/content/Context;

.field private 'rightEdge' I

.field private 'rightLayout' Landroid/view/View;

.field private 'rightLayoutParams' Landroid/view/ViewGroup$MarginLayoutParams;

.field private 'screenWidth' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendGroupManagerView/leftEdge I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendGroupManagerView/rightEdge I
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/mcoContext Landroid/content/Context;
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
putfield com/nd/android/u/contact/view/FriendGroupManagerView/leftEdge I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendGroupManagerView/rightEdge I
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/mcoContext Landroid/content/Context;
aload 1
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
astore 1
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 1
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 0
aload 2
getfield android/util/DisplayMetrics/widthPixels I
putfield com/nd/android/u/contact/view/FriendGroupManagerView/screenWidth I
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/rightEdge I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftEdge I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/view/FriendGroupManagerView;J)V
aload 0
lload 1
invokespecial com/nd/android/u/contact/view/FriendGroupManagerView/sleep(J)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/view/FriendGroupManagerView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/isRightLayoutVisible Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/view/FriendGroupManagerView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/isSliding Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayout Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayout Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method private sleep(J)V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
lload 1
invokestatic java/lang/Thread/sleep(J)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 4
.limit stack 2
.end method

.method public isRightLayoutVisiable()Z
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/isRightLayoutVisible Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSliding()Z
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/isSliding Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial android/widget/LinearLayout/onLayout(ZIIII)V
iload 1
ifeq L0
aload 0
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView/getChildAt(I)Landroid/view/View;
putfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayout Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayout Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/view/ViewGroup$MarginLayoutParams
putfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/screenWidth I
putfield android/view/ViewGroup$MarginLayoutParams/width I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayout Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/leftLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView/getChildAt(I)Landroid/view/View;
putfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayout Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayout Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/view/ViewGroup$MarginLayoutParams
putfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendGroupManagerView/rightEdge I
aload 0
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView/rightLayoutParams Landroid/view/ViewGroup$MarginLayoutParams;
getfield android/view/ViewGroup$MarginLayoutParams/width I
putfield com/nd/android/u/contact/view/FriendGroupManagerView/leftEdge I
L0:
return
.limit locals 6
.limit stack 6
.end method

.method public scrollToLeftLayout()V
new com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask
dup
aload 0
invokespecial com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/<init>(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)V
iconst_2
anewarray java/lang/Integer
dup
iconst_0
bipush -30
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 20
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public scrollToRightLayout()V
new com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask
dup
aload 0
invokespecial com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/<init>(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)V
iconst_2
anewarray java/lang/Integer
dup
iconst_0
bipush 30
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 20
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public scrollWithoutDelay()V
new com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask
dup
aload 0
invokespecial com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/<init>(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)V
iconst_2
anewarray java/lang/Integer
dup
iconst_0
bipush -30
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public setRightLayoutVisiable(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/isRightLayoutVisible Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSliding(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView/isSliding Z
return
.limit locals 2
.limit stack 2
.end method
