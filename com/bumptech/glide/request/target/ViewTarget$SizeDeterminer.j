.bytecode 50.0
.class synchronized com/bumptech/glide/request/target/ViewTarget$SizeDeterminer
.super java/lang/Object
.inner class private static SizeDeterminer inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer outer com/bumptech/glide/request/target/ViewTarget
.inner class private static SizeDeterminerLayoutListener inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener outer com/bumptech/glide/request/target/ViewTarget$SizeDeterminer

.field private static final 'PENDING_SIZE' I = 0


.field private final 'cbs' Ljava/util/List; signature "Ljava/util/List<Lcom/bumptech/glide/request/target/SizeReadyCallback;>;"

.field private 'displayDimens' Landroid/graphics/Point;

.field private 'layoutListener' Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private final 'view' Landroid/view/View;

.method public <init>(Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
aload 0
aload 1
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/checkCurrentDimens()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkCurrentDimens()V
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
L1:
return
L0:
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getViewWidthOrParam()I
istore 1
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getViewHeightOrParam()I
istore 2
aload 0
iload 1
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L1
aload 0
iload 2
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L1
aload 0
iload 1
iload 2
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/notifyCbs(II)V
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getViewTreeObserver()Landroid/view/ViewTreeObserver;
astore 3
aload 3
invokevirtual android/view/ViewTreeObserver/isAlive()Z
ifeq L2
aload 3
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/layoutListener Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
invokevirtual android/view/ViewTreeObserver/removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
L2:
aload 0
aconst_null
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/layoutListener Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
return
.limit locals 4
.limit stack 3
.end method

.method private getDisplayDimens()Landroid/graphics/Point;
.annotation invisible Landroid/annotation/TargetApi;
value I = 13
.end annotation
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
ifnull L0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
areturn
L0:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 1
getstatic android/os/Build$VERSION/SDK_INT I
bipush 13
if_icmplt L1
aload 0
new android/graphics/Point
dup
invokespecial android/graphics/Point/<init>()V
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
aload 1
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
invokevirtual android/view/Display/getSize(Landroid/graphics/Point;)V
L2:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
areturn
L1:
aload 0
new android/graphics/Point
dup
aload 1
invokevirtual android/view/Display/getWidth()I
aload 1
invokevirtual android/view/Display/getHeight()I
invokespecial android/graphics/Point/<init>(II)V
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/displayDimens Landroid/graphics/Point;
goto L2
.limit locals 2
.limit stack 5
.end method

.method private getSizeForParam(IZ)I
iload 1
bipush -2
if_icmpne L0
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getDisplayDimens()Landroid/graphics/Point;
astore 3
iload 2
ifeq L1
aload 3
getfield android/graphics/Point/y I
ireturn
L1:
aload 3
getfield android/graphics/Point/x I
ireturn
L0:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method private getViewHeightOrParam()I
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 1
aload 0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getHeight()I
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getHeight()I
ireturn
L0:
aload 1
ifnull L1
aload 0
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
iconst_1
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getSizeForParam(IZ)I
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getViewWidthOrParam()I
iconst_0
istore 1
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 2
aload 0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getWidth()I
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getWidth()I
istore 1
L1:
iload 1
ireturn
L0:
aload 2
ifnull L1
aload 0
aload 2
getfield android/view/ViewGroup$LayoutParams/width I
iconst_0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getSizeForParam(IZ)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private isSizeValid(I)Z
iload 1
ifgt L0
iload 1
bipush -2
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private notifyCbs(II)V
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/request/target/SizeReadyCallback
iload 1
iload 2
invokeinterface com/bumptech/glide/request/target/SizeReadyCallback/onSizeReady(II)V 2
goto L0
L1:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 4
.limit stack 3
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getViewWidthOrParam()I
istore 2
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getViewHeightOrParam()I
istore 3
aload 0
iload 2
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L0
aload 0
iload 3
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/isSizeValid(I)Z
ifeq L0
aload 1
iload 2
iload 3
invokeinterface com/bumptech/glide/request/target/SizeReadyCallback/onSizeReady(II)V 2
L1:
return
L0:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L2
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/cbs Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/layoutListener Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
ifnonnull L1
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/view Landroid/view/View;
invokevirtual android/view/View/getViewTreeObserver()Landroid/view/ViewTreeObserver;
astore 1
aload 0
new com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener
dup
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener/<init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/layoutListener Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
aload 1
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/layoutListener Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
invokevirtual android/view/ViewTreeObserver/addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
return
.limit locals 4
.limit stack 4
.end method
