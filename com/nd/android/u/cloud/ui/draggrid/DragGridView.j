.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/draggrid/DragGridView
.super android/widget/GridView
.inner class inner com/nd/android/u/cloud/ui/draggrid/DragGridView$1

.field private static final 'TAG' Ljava/lang/String; = "DragGridView"

.field private 'contentViewTop' I

.field private 'deviationTop' I

.field private 'dragImageView' Landroid/widget/ImageView;

.field private 'dragItemView' Landroid/view/ViewGroup;

.field private 'dragPosition' I

.field private 'dropPosition' I

.field 'flag' Z

.field private 'halfItemWidth' I

.field private 'holdPosition' I

.field private 'isCountXY' Z

.field private 'isMoving' Z

.field private 'itemTotalCount' I

.field private 'lastAnimationID' Ljava/lang/String;

.field private 'leftBottomPosition' I

.field private 'leftBtmItemY' I

.field private 'mContext' Landroid/content/Context;

.field private 'mLastX' I

.field private 'mLastY' I

.field private 'nColumns' I

.field private 'nRows' I

.field private 'remainder' I

.field private 'specialItemY' I

.field private 'specialPosition' I

.field private 'startPosition' I

.field private 'windowManager' Landroid/view/WindowManager;

.field private 'windowParams' Landroid/view/WindowManager$LayoutParams;

.field private 'xtox' I

.field private 'ytoy' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/GridView/<init>(Landroid/content/Context;)V
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
aload 0
iconst_4
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragItemView Landroid/view/ViewGroup;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isMoving Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/flag Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
aload 0
iconst_m1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
aload 0
iconst_4
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragItemView Landroid/view/ViewGroup;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isMoving Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/flag Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastX I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nRows I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nRows I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastY I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1202(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1302(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialItemY I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1402(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBtmItemY I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1502(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragItemView Landroid/view/ViewGroup;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;Landroid/graphics/Bitmap;II)V
aload 0
aload 1
iload 2
iload 3
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/startDrag(Landroid/graphics/Bitmap;II)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$1700(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)V
aload 0
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/hideDropItem()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1802(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isMoving Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)Z
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/halfItemWidth I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/itemTotalCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/itemTotalCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;)I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/remainder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/remainder I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private getContentVieTop()I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/contentViewTop I
ifne L0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
astore 1
aload 0
aload 1
ldc_w 16908290
invokevirtual android/view/Window/findViewById(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/contentViewTop I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/contentViewTop I
ifne L0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 2
aload 1
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
aload 2
invokevirtual android/view/View/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
L0:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/contentViewTop I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private hideDropItem()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/android/u/cloud/ui/adapter/AppAdapter
iconst_0
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/showDropItem(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private onDrag(II)V
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
ldc_w 0.8F
putfield android/view/WindowManager$LayoutParams/alpha F
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
iload 1
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/xtox I
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragItemView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getWidth()I
iconst_2
idiv
isub
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/ytoy I
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragItemView Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getHeight()I
iconst_2
idiv
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/deviationTop I
iadd
putfield android/view/WindowManager$LayoutParams/y I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
L0:
return
.limit locals 3
.limit stack 4
.end method

.method private onDrop(II)V
aload 0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/android/u/cloud/ui/adapter/AppAdapter
astore 3
aload 3
iconst_1
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/showDropItem(Z)V
aload 3
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 2
.end method

.method private startDrag(Landroid/graphics/Bitmap;II)V
aload 0
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/stopDrag()V
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
ifnonnull L0
aload 0
new android/view/WindowManager$LayoutParams
dup
invokespecial android/view/WindowManager$LayoutParams/<init>()V
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
bipush 51
putfield android/view/WindowManager$LayoutParams/gravity I
L0:
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
idiv
istore 4
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
istore 5
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
iload 2
iload 4
isub
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
iload 3
aload 0
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/getContentVieTop()I
isub
bipush 100
isub
iload 5
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/deviationTop I
iadd
putfield android/view/WindowManager$LayoutParams/y I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/height I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/width I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
ldc_w 0.8F
putfield android/view/WindowManager$LayoutParams/alpha F
new android/widget/ImageView
dup
aload 0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/getContext()Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 6
aload 6
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 6
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
aload 0
aload 6
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
return
.limit locals 7
.limit stack 3
.end method

.method private stopDrag()V
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/windowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
invokeinterface android/view/WindowManager/removeView(Landroid/view/View;)V 1
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getDeviationTop()I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/deviationTop I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemShadow(II)V
return
.limit locals 3
.limit stack 0
.end method

.method public getMoveAnimation(FF)Landroid/view/animation/Animation;
new android/view/animation/TranslateAnimation
dup
iconst_1
fconst_0
iconst_1
fload 1
iconst_1
fconst_0
iconst_1
fload 2
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
astore 3
aload 3
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 3
ldc2_w 300L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 3
areturn
.limit locals 4
.limit stack 10
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
ireturn
L0:
aload 0
aload 1
invokespecial android/widget/GridView/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onMove(II)V
aload 0
iload 1
iload 2
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/pointToPosition(II)I
istore 4
iload 4
iconst_m1
if_icmpne L0
L1:
return
L0:
ldc "DragGridView"
ldc "%s,%s,%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialItemY I
iconst_m1
if_icmpne L2
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastY I
isub
istore 1
L3:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBtmItemY I
iconst_m1
if_icmpne L4
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastY I
isub
istore 2
L5:
iload 4
iconst_m1
if_icmpeq L6
iload 4
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
if_icmpeq L6
aload 0
iload 4
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
L7:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
if_icmpeq L8
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
L8:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
isub
istore 2
iload 2
istore 1
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
if_icmpeq L9
iload 2
istore 1
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
if_icmpne L9
iconst_0
istore 1
L9:
iload 1
ifeq L1
iload 1
invokestatic java/lang/Math/abs(I)I
istore 4
iconst_0
istore 2
L10:
iload 2
iload 4
if_icmpge L1
iload 1
ifle L11
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
iconst_1
iadd
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
if_icmpne L12
L13:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
if_icmpne L14
L15:
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/android/u/cloud/ui/adapter/AppAdapter
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
invokevirtual com/nd/android/u/cloud/ui/adapter/AppAdapter/exchange(II)V
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/startPosition I
iload 2
iconst_1
iadd
istore 2
goto L10
L2:
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialItemY I
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/halfItemWidth I
isub
istore 1
goto L3
L4:
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBtmItemY I
isub
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/halfItemWidth I
isub
istore 2
goto L5
L6:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
iconst_m1
if_icmpeq L16
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/specialPosition I
if_icmpne L16
iload 1
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/halfItemWidth I
if_icmplt L16
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/itemTotalCount I
iconst_1
isub
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
goto L7
L16:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
iconst_m1
if_icmpeq L7
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/leftBottomPosition I
if_icmpne L7
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/halfItemWidth I
if_icmplt L7
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/itemTotalCount I
iconst_1
isub
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dropPosition I
goto L7
L12:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
iconst_1
isub
i2f
fstore 3
goto L13
L14:
goto L15
L11:
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
iconst_1
isub
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
if_icmpne L17
L18:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/holdPosition I
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
idiv
if_icmpne L19
L20:
goto L15
L17:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/nColumns I
iconst_1
isub
ineg
i2f
fstore 3
goto L18
L19:
goto L20
.limit locals 5
.limit stack 6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragImageView Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/dragPosition I
iconst_m1
if_icmpeq L0
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 3
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L1
L2
default : L0
L0:
aload 0
aload 1
invokespecial android/widget/GridView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L2:
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
ifne L3
aload 0
iload 2
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastX I
isub
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/xtox I
aload 0
iload 3
aload 0
getfield com/nd/android/u/cloud/ui/draggrid/DragGridView/mLastY I
isub
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/ytoy I
aload 0
iconst_1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/isCountXY Z
L3:
aload 0
iload 2
iload 3
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/onDrag(II)V
aload 0
iload 2
iload 3
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/onMove(II)V
goto L0
L1:
aload 0
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/stopDrag()V
aload 0
iload 2
iload 3
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView/onDrop(II)V
goto L0
.limit locals 4
.limit stack 3
.end method

.method public setDeviationTop(I)V
ldc "DragGridView"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deviationTop ="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/deviationTop I
return
.limit locals 2
.limit stack 3
.end method

.method public setLongFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/draggrid/DragGridView/flag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
aload 0
new com/nd/android/u/cloud/ui/draggrid/DragGridView$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/ui/draggrid/DragGridView$1/<init>(Lcom/nd/android/u/cloud/ui/draggrid/DragGridView;Landroid/view/MotionEvent;)V
invokevirtual com/nd/android/u/cloud/ui/draggrid/DragGridView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 0
aload 1
invokespecial android/widget/GridView/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 5
.end method
