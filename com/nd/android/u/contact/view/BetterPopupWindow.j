.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/BetterPopupWindow
.super java/lang/Object
.inner class inner com/nd/android/u/contact/view/BetterPopupWindow$1

.field protected final 'anchor' Landroid/view/View;

.field private 'background' Landroid/graphics/drawable/Drawable;

.field private 'root' Landroid/view/View;

.field private 'width' I

.field private final 'window' Landroid/widget/PopupWindow;

.field private final 'windowManager' Landroid/view/WindowManager;

.method public <init>(Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/view/BetterPopupWindow/background Landroid/graphics/drawable/Drawable;
aload 0
aload 1
putfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
aload 0
new android/widget/PopupWindow
dup
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
new com/nd/android/u/contact/view/BetterPopupWindow$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/BetterPopupWindow$1/<init>(Lcom/nd/android/u/contact/view/BetterPopupWindow;)V
invokevirtual android/widget/PopupWindow/setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/contact/view/BetterPopupWindow/windowManager Landroid/view/WindowManager;
aload 0
invokevirtual com/nd/android/u/contact/view/BetterPopupWindow/onCreate()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/BetterPopupWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method private preShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "setContentView was not called with a view to display."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/nd/android/u/contact/view/BetterPopupWindow/onShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/background Landroid/graphics/drawable/Drawable;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L2:
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/width I
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setHeight(I)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setTouchable(Z)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/background Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L2
.limit locals 1
.limit stack 3
.end method

.method public dismiss()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onShow()V
return
.limit locals 1
.limit stack 0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/BetterPopupWindow/background Landroid/graphics/drawable/Drawable;
return
.limit locals 2
.limit stack 2
.end method

.method public setContentView(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/nd/android/u/contact/view/BetterPopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setContentView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setWidth(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/BetterPopupWindow/width I
return
.limit locals 2
.limit stack 2
.end method

.method public showLikePopDownMenu()V
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/u/contact/view/BetterPopupWindow/showLikePopDownMenu(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public showLikePopDownMenu(II)V
aload 0
invokespecial com/nd/android/u/contact/view/BetterPopupWindow/preShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_PopUpMenu_Right I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
iload 1
iload 2
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method

.method public showLikePopDownSelection()V
aload 0
invokespecial com/nd/android/u/contact/view/BetterPopupWindow/preShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_GrowFromBottom I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
iconst_2
newarray int
astore 6
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
aload 6
invokevirtual android/view/View/getLocationOnScreen([I)V
new android/graphics/Rect
dup
aload 6
iconst_0
iaload
aload 6
iconst_1
iaload
aload 6
iconst_0
iaload
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iadd
aload 6
iconst_1
iaload
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getHeight()I
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 7
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
bipush -2
bipush -2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 1
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
istore 4
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
iload 1
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/windowManager Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
pop
aload 6
iconst_0
iaload
istore 2
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iconst_2
idiv
istore 3
iload 1
iconst_2
idiv
istore 5
aload 7
getfield android/graphics/Rect/top I
iload 4
isub
istore 1
iload 4
aload 7
getfield android/graphics/Rect/top I
if_icmple L0
aload 7
getfield android/graphics/Rect/bottom I
bipush 10
isub
istore 1
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_GrowFromTop I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
L0:
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
iconst_0
iload 2
iload 3
iadd
iload 5
isub
iload 1
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 8
.limit stack 7
.end method

.method public showLikePopDownSelection(II)V
aload 0
invokespecial com/nd/android/u/contact/view/BetterPopupWindow/preShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_PopUpMenu_Center I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
iconst_0
iload 1
iload 2
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 3
.limit stack 5
.end method

.method public showLikeQuickAction()V
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/u/contact/view/BetterPopupWindow/showLikeQuickAction(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public showLikeQuickAction(II)V
aload 0
invokespecial com/nd/android/u/contact/view/BetterPopupWindow/preShow()V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_GrowFromBottom I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
iconst_2
newarray int
astore 6
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
aload 6
invokevirtual android/view/View/getLocationOnScreen([I)V
new android/graphics/Rect
dup
aload 6
iconst_0
iaload
aload 6
iconst_1
iaload
aload 6
iconst_0
iaload
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iadd
aload 6
iconst_1
iaload
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getHeight()I
iadd
invokespecial android/graphics/Rect/<init>(IIII)V
astore 6
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
bipush -2
bipush -2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 3
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
istore 4
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/windowManager Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
istore 5
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/windowManager Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getHeight()I
pop
iload 5
iload 3
isub
iconst_2
idiv
istore 5
aload 6
getfield android/graphics/Rect/top I
iload 4
isub
iload 2
iadd
istore 3
iload 4
aload 6
getfield android/graphics/Rect/top I
if_icmple L0
aload 6
getfield android/graphics/Rect/bottom I
iload 2
iadd
istore 3
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
getstatic com/nd/android/u/contact/R$style/Animations_GrowFromTop I
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
L0:
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow/anchor Landroid/view/View;
iconst_0
iload 5
iload 1
iadd
iload 3
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 7
.limit stack 7
.end method
