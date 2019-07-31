.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/NdUserLoginPopup
.super android/widget/PopupWindow
.implements com/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper
.inner class inner com/nd/rj/common/login/jobnumber/NdUserLoginPopup$1
.inner class inner com/nd/rj/common/login/jobnumber/NdUserLoginPopup$2
.inner class inner com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3
.inner class public static abstract interface IUserOper inner com/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper outer com/nd/rj/common/login/jobnumber/NdUserLoginPopup

.field protected final 'anchor' Landroid/view/View;

.field protected 'background' Landroid/graphics/drawable/Drawable;

.field protected final 'context' Landroid/content/Context;

.field protected final 'inflater' Landroid/view/LayoutInflater;

.field private 'lvUserList' Landroid/widget/ListView;

.field private 'mAdapter' Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;

.field private 'mOper' Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;

.field protected 'root' Landroid/view/View;

.field protected final 'window' Landroid/widget/PopupWindow;

.field protected final 'windowManager' Landroid/view/WindowManager;

.method public <init>(Landroid/view/View;Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;)V
aload 0
aload 1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;)V
aload 0
aconst_null
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/background Landroid/graphics/drawable/Drawable;
aload 0
aload 2
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mOper Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/anchor Landroid/view/View;
aload 0
new android/widget/PopupWindow
dup
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokespecial android/widget/PopupWindow/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
new com/nd/rj/common/login/jobnumber/NdUserLoginPopup$1
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/NdUserLoginPopup$1/<init>(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)V
invokevirtual android/widget/PopupWindow/setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/windowManager Landroid/view/WindowManager;
aload 0
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/context Landroid/content/Context;
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/context Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/inflater Landroid/view/LayoutInflater;
aload 0
invokevirtual com/nd/rj/common/login/jobnumber/NdUserLoginPopup/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mOper Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Object;>;)V"
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
ifnonnull L0
aload 0
new com/nd/rj/common/login/jobnumber/UserLoginAdapter
dup
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/context Landroid/content/Context;
aload 0
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter/<init>(Landroid/content/Context;Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;)V
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
new java/util/ArrayList
dup
aload 1
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/lvUserList Landroid/widget/ListView;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected initView()V
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/inflater Landroid/view/LayoutInflater;
ldc_w 2130903544
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
iconst_1
invokevirtual android/view/View/setFocusableInTouchMode(Z)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
new com/nd/rj/common/login/jobnumber/NdUserLoginPopup$2
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/NdUserLoginPopup$2/<init>(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)V
invokevirtual android/view/View/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
ldc_w 2131625235
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/lvUserList Landroid/widget/ListView;
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
invokevirtual com/nd/rj/common/login/jobnumber/NdUserLoginPopup/setContentView(Landroid/view/View;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/lvUserList Landroid/widget/ListView;
new com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/NdUserLoginPopup$3/<init>(Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onDelete()V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/getCount()I
ifle L0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mAdapter Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
iconst_0
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/getItem(I)Ljava/lang/Object;
astore 1
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mOper Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
aload 1
invokeinterface com/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper/onSelectUser(Ljava/lang/Object;)V 1
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/mOper Lcom/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper;
aconst_null
invokeinterface com/nd/rj/common/login/jobnumber/NdUserLoginPopup$IUserOper/onSelectUser(Ljava/lang/Object;)V 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected preShow(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Object;>;)V"
aload 0
aload 1
invokespecial com/nd/rj/common/login/jobnumber/NdUserLoginPopup/initData(Ljava/util/List;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/background Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/anchor Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 2
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
iload 2
invokevirtual android/widget/PopupWindow/setWidth(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
bipush -2
invokevirtual android/widget/PopupWindow/setHeight(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setTouchable(Z)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
invokevirtual android/widget/PopupWindow/setContentView(Landroid/view/View;)V
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/background Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public show(ILjava/util/List;)V
.signature "(ILjava/util/List<Ljava/lang/Object;>;)V"
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/NdUserLoginPopup/preShow(Ljava/util/List;)V
iconst_2
newarray int
astore 2
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/anchor Landroid/view/View;
aload 2
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/window Landroid/widget/PopupWindow;
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/anchor Landroid/view/View;
iconst_0
bipush -2
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;II)V
new android/view/animation/AlphaAnimation
dup
ldc_w 0.1F
fconst_1
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 2
aload 2
ldc2_w 100L
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 0
getfield com/nd/rj/common/login/jobnumber/NdUserLoginPopup/root Landroid/view/View;
aload 2
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 3
.limit stack 5
.end method
