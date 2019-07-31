.bytecode 50.0
.class public synchronized com/product/android/ui/waterfall/LazyScrollView
.super android/widget/ScrollView
.inner class inner com/product/android/ui/waterfall/LazyScrollView$1
.inner class inner com/product/android/ui/waterfall/LazyScrollView$2
.inner class public static abstract interface OnScrollListener inner com/product/android/ui/waterfall/LazyScrollView$OnScrollListener outer com/product/android/ui/waterfall/LazyScrollView

.field private static final 'TAG' Ljava/lang/String; = "LazyScrollView"

.field private final 'ACTION_UP_ID' I

.field 'diffY' F

.field 'endY' F

.field 'handler' Landroid/os/Handler;

.field private 'miLastScrollY' I

.field private 'onScrollListener' Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;

.field 'onTouchListener' Landroid/view/View$OnTouchListener;

.field 'startY' F

.field private 'view' Landroid/view/View;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;)V
aload 0
ldc_w -9983762
putfield com/product/android/ui/waterfall/LazyScrollView/ACTION_UP_ID I
aload 0
iconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/miLastScrollY I
aload 0
new com/product/android/ui/waterfall/LazyScrollView$1
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$1/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
new com/product/android/ui/waterfall/LazyScrollView$2
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$2/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/onTouchListener Landroid/view/View$OnTouchListener;
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/startY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/endY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/diffY F
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
ldc_w -9983762
putfield com/product/android/ui/waterfall/LazyScrollView/ACTION_UP_ID I
aload 0
iconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/miLastScrollY I
aload 0
new com/product/android/ui/waterfall/LazyScrollView$1
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$1/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
new com/product/android/ui/waterfall/LazyScrollView$2
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$2/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/onTouchListener Landroid/view/View$OnTouchListener;
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/startY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/endY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/diffY F
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
ldc_w -9983762
putfield com/product/android/ui/waterfall/LazyScrollView/ACTION_UP_ID I
aload 0
iconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/miLastScrollY I
aload 0
new com/product/android/ui/waterfall/LazyScrollView$1
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$1/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/handler Landroid/os/Handler;
aload 0
new com/product/android/ui/waterfall/LazyScrollView$2
dup
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView$2/<init>(Lcom/product/android/ui/waterfall/LazyScrollView;)V
putfield com/product/android/ui/waterfall/LazyScrollView/onTouchListener Landroid/view/View$OnTouchListener;
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/startY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/endY F
aload 0
fconst_0
putfield com/product/android/ui/waterfall/LazyScrollView/diffY F
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/waterfall/LazyScrollView;)Landroid/view/View;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/view Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/waterfall/LazyScrollView;)Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/onScrollListener Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/waterfall/LazyScrollView;)I
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/miLastScrollY I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/product/android/ui/waterfall/LazyScrollView;I)I
aload 0
iload 1
putfield com/product/android/ui/waterfall/LazyScrollView/miLastScrollY I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private init()V
aload 0
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/onTouchListener Landroid/view/View$OnTouchListener;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public fling(I)V
aload 0
iload 1
iconst_2
imul
invokespecial android/widget/ScrollView/fling(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public getView()V
aload 0
aload 0
iconst_0
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getChildAt(I)Landroid/view/View;
putfield com/product/android/ui/waterfall/LazyScrollView/view Landroid/view/View;
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/view Landroid/view/View;
ifnull L0
aload 0
invokespecial com/product/android/ui/waterfall/LazyScrollView/init()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onScrollChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/ScrollView/onScrollChanged(IIII)V
aload 0
getfield com/product/android/ui/waterfall/LazyScrollView/onScrollListener Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
iload 1
iload 2
iload 3
iload 4
invokeinterface com/product/android/ui/waterfall/LazyScrollView$OnScrollListener/onAutoScroll(IIII)V 4
return
.limit locals 5
.limit stack 5
.end method

.method public setOnScrollListener(Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;)V
aload 0
aload 1
putfield com/product/android/ui/waterfall/LazyScrollView/onScrollListener Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;
return
.limit locals 2
.limit stack 2
.end method
