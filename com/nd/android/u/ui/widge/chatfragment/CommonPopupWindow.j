.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow
.super java/lang/Object
.inner class inner com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$1
.inner class inner com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$2

.field protected 'anchor' Landroid/view/View;

.field protected 'mctx' Landroid/content/Context;

.field private 'onPopWindowDismissListener' Landroid/widget/PopupWindow$OnDismissListener;

.field private 'root' Landroid/view/View;

.field private final 'window' Landroid/widget/PopupWindow;

.field private final 'windowManager' Landroid/view/WindowManager;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
aload 0
new com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$2/<init>(Lcom/nd/android/u/ui/widge/chatfragment/CommonPopupWindow;)V
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onPopWindowDismissListener Landroid/widget/PopupWindow$OnDismissListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/mctx Landroid/content/Context;
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/mctx Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onPopWindowDismissListener Landroid/widget/PopupWindow$OnDismissListener;
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setHeight(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setTouchable(Z)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
new com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/CommonPopupWindow;)V
invokevirtual android/widget/PopupWindow/setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/mctx Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/windowManager Landroid/view/WindowManager;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onCreate()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/CommonPopupWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method private preShow()Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "setContentView was not called with a view to display."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onShow()Z
ifne L1
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 3
.end method

.method public dismiss()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method protected dismissOption()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCreate()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onShow()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setContentView(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/mctx Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setContentView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/onPopWindowDismissListener Landroid/widget/PopupWindow$OnDismissListener;
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public showLikePopDownMenu()V
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/showLikePopDownMenu(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public showLikePopDownMenu(II)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/preShow()Z
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/anchor Landroid/view/View;
iload 1
iload 2
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method

.method public showLikePopDownSelection()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/preShow()Z
ifne L0
return
L0:
iconst_2
newarray int
astore 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/anchor Landroid/view/View;
aload 4
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
bipush -2
bipush -2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/root Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
iload 1
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/windowManager Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
istore 3
aload 4
iconst_0
iaload
istore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iconst_2
idiv
istore 2
iload 3
iconst_2
idiv
istore 3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/anchor Landroid/view/View;
bipush 80
iload 1
iload 2
iadd
iload 3
isub
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/CommonPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getHeight()I
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 5
.limit stack 5
.end method
