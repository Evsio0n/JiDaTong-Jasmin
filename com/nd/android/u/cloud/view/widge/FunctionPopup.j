.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/FunctionPopup
.super android/widget/PopupWindow
.inner class inner com/nd/android/u/cloud/view/widge/FunctionPopup$1
.inner class inner com/nd/android/u/cloud/view/widge/FunctionPopup$2
.inner class MyAdapter inner com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter outer com/nd/android/u/cloud/view/widge/FunctionPopup
.inner class Holder inner com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder outer com/nd/android/u/cloud/view/widge/FunctionPopup

.field protected final 'anchor' Landroid/view/View;

.field protected final 'context' Landroid/content/Context;

.field protected final 'inflater' Landroid/view/LayoutInflater;

.field private 'length' I

.field private 'lvUserList' Landroid/widget/ListView;

.field private 'mAdapter' Lcom/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter;

.field protected 'root' Landroid/view/View;

.field protected 'titles' [Ljava/lang/String;

.field protected final 'window' Landroid/widget/PopupWindow;

.field protected final 'windowManager' Landroid/view/WindowManager;

.method public <init>(Landroid/view/View;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;)V
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/titles [Ljava/lang/String;
aload 2
ifnonnull L0
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/length I
L1:
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/anchor Landroid/view/View;
aload 0
new android/widget/PopupWindow
dup
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
new com/nd/android/u/cloud/view/widge/FunctionPopup$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FunctionPopup$1/<init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)V
invokevirtual android/widget/PopupWindow/setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/windowManager Landroid/view/WindowManager;
aload 0
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/context Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/context Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/inflater Landroid/view/LayoutInflater;
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/FunctionPopup/initView()V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/lvUserList Landroid/widget/ListView;
aload 3
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
aload 2
arraylength
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/length I
goto L1
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)I
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/length I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/mAdapter Lcom/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/context Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/<init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;Landroid/content/Context;Landroid/widget/PopupWindow;)V
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/mAdapter Lcom/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter;
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/lvUserList Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/mAdapter Lcom/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 6
.end method

.method public dismiss()V
aload 0
invokespecial android/widget/PopupWindow/dismiss()V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected initView()V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/inflater Landroid/view/LayoutInflater;
ldc_w 2130903299
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
iconst_1
invokevirtual android/view/View/setFocusableInTouchMode(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
new com/nd/android/u/cloud/view/widge/FunctionPopup$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FunctionPopup$2/<init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)V
invokevirtual android/view/View/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
ldc_w 2131625235
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/view/widge/FunctionPopup/lvUserList Landroid/widget/ListView;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
invokevirtual com/nd/android/u/cloud/view/widge/FunctionPopup/setContentView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected preShow()V
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FunctionPopup/initData()V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setHeight(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setTouchable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 2
.end method

.method public show(II)V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/FunctionPopup/preShow()V
iconst_2
newarray int
astore 3
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/anchor Landroid/view/View;
aload 3
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/anchor Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
sipush 250
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/anchor Landroid/view/View;
iload 1
bipush 40
iadd
ineg
iload 2
iconst_2
idiv
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
new android/view/animation/AlphaAnimation
dup
ldc_w 0.1F
fconst_1
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 3
aload 3
ldc2_w 100L
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/root Landroid/view/View;
aload 3
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 4
.limit stack 5
.end method
