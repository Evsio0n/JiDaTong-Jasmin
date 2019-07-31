.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/DragListViewController
.super java/lang/Object
.inner class protected manger inner com/nd/android/u/ui/widge/DragListViewController$manger outer com/nd/android/u/ui/widge/DragListViewController
.inner class public static abstract interface onEventListener inner com/nd/android/u/ui/widge/DragListViewController$onEventListener outer com/nd/android/u/ui/widge/DragListViewController

.field protected static final 'EDGE' F = 0.3F


.field protected 'mBitmap' Landroid/graphics/Bitmap;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mDragImageView' Landroid/widget/ImageView;

.field protected 'mEventListener' Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;

.field protected 'mItemHeight' I

.field protected 'mListView' Landroid/widget/ListView;

.field protected 'mListViewHeight' I

.field protected 'mOffset' I

.field protected 'mSize' I

.field protected 'mSrcPosition' I

.field protected 'mWindowManager' Landroid/view/WindowManager;

.field protected 'mWindowParams' Landroid/view/WindowManager$LayoutParams;

.field protected 'mbIsDragging' Z

.method public <init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/DragListViewController/mbIsDragging Z
aload 0
iconst_m1
putfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/DragListViewController/mSize I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/DragListViewController/mOffset I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/DragListViewController/mItemHeight I
aload 0
aload 1
putfield com/nd/android/u/ui/widge/DragListViewController/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
return
.limit locals 3
.limit stack 2
.end method

.method protected getParams()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
putfield com/nd/android/u/ui/widge/DragListViewController/mSize I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
ifgt L0
L1:
return
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getHeight()I
putfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mOffset I
ifne L1
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getHeight()I
putfield com/nd/android/u/ui/widge/DragListViewController/mItemHeight I
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getTop()I
putfield com/nd/android/u/ui/widge/DragListViewController/mOffset I
return
.limit locals 1
.limit stack 3
.end method

.method protected getScrollRange(F)I
fload 1
f2i
istore 2
ldc_w 0.3F
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
i2f
fmul
f2i
istore 3
iload 2
iload 3
if_icmple L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
iload 2
isub
iload 3
isub
istore 2
L1:
iload 2
bipush 10
idiv
ireturn
L0:
iload 3
iload 2
isub
istore 2
goto L1
.limit locals 4
.limit stack 2
.end method

.method public manageList()V
new com/nd/android/u/ui/widge/DragListViewController$manger
dup
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokespecial com/nd/android/u/ui/widge/DragListViewController$manger/<init>(Lcom/nd/android/u/ui/widge/DragListViewController;Landroid/view/View;)V
pop
return
.limit locals 1
.limit stack 4
.end method

.method public onDrag(I)V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
ldc_w 0.8F
putfield android/view/WindowManager$LayoutParams/alpha F
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
iload 1
putfield android/view/WindowManager$LayoutParams/y I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public recycle()V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mBitmap Landroid/graphics/Bitmap;
invokestatic com/common/android/utils/ImageUtils/recycleBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 1
.limit stack 1
.end method

.method public setOnEventListener(Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/DragListViewController/mEventListener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
return
.limit locals 2
.limit stack 2
.end method

.method public startDrag(Landroid/graphics/Bitmap;I)V
aload 0
invokevirtual com/nd/android/u/ui/widge/DragListViewController/stopDrag()V
aload 0
new android/view/WindowManager$LayoutParams
dup
invokespecial android/view/WindowManager$LayoutParams/<init>()V
putfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
bipush 48
putfield android/view/WindowManager$LayoutParams/gravity I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
iconst_0
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
iload 2
putfield android/view/WindowManager$LayoutParams/y I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
bipush -2
putfield android/view/WindowManager$LayoutParams/height I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
sipush 408
putfield android/view/WindowManager$LayoutParams/flags I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
bipush -3
putfield android/view/WindowManager$LayoutParams/format I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
iconst_0
putfield android/view/WindowManager$LayoutParams/windowAnimations I
new android/widget/ImageView
dup
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mContext Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/ui/widge/DragListViewController/mWindowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowManager Landroid/view/WindowManager;
aload 3
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
aload 0
aload 3
putfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
return
.limit locals 4
.limit stack 3
.end method

.method public stopDrag()V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mWindowManager Landroid/view/WindowManager;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
invokeinterface android/view/WindowManager/removeView(Landroid/view/View;)V 1
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/DragListViewController/mDragImageView Landroid/widget/ImageView;
L0:
return
.limit locals 1
.limit stack 2
.end method
