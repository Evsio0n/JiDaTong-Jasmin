.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/LongClickTopWindow
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IChatListLongClickOperation
.inner class static synthetic inner com/nd/android/u/ui/longClickMenu/LongClickTopWindow$1
.inner class private LongClickCallBack inner com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack outer com/nd/android/u/ui/longClickMenu/LongClickTopWindow

.field private 'mAnchorView' Landroid/view/View;

.field private 'mContext' Landroid/app/Activity;

.field private 'mFromSelf' Z

.field private 'mLongClickView' Lcom/nd/android/u/ui/longClickMenu/LongClickView;

.field private 'mPopupWindow' Landroid/widget/PopupWindow;

.method public <init>(Landroid/app/Activity;Landroid/view/View;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mContext Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mAnchorView Landroid/view/View;
aload 0
iload 3
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mFromSelf Z
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow/init()V
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
new com/nd/android/u/ui/longClickMenu/LongClickView
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mContext Landroid/app/Activity;
invokespecial com/nd/android/u/ui/longClickMenu/LongClickView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
new com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/<init>(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow$1;)V
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/setLongClickCallBack(Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;)V
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
bipush -2
bipush -2
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_0
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
astore 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
ldc_w 16973828
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public hide()V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public show(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
return
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
astore 5
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
aload 5
aload 1
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/createItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;Ljava/util/List;)V
goto L2
L3:
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L4:
iconst_2
newarray int
astore 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mAnchorView Landroid/view/View;
aload 1
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 1
iconst_1
iaload
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mContext Landroid/app/Activity;
ldc_w 60.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
istore 3
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mFromSelf Z
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/isFormSelf(Z)V
bipush 51
istore 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mFromSelf Z
ifeq L5
bipush 53
istore 2
L5:
iload 3
bipush 100
if_icmpge L6
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mAnchorView Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 1
iconst_1
iaload
iadd
istore 3
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
iconst_1
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/isTopArrows(Z)V
L7:
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mAnchorView Landroid/view/View;
iload 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mContext Landroid/app/Activity;
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
iload 3
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
return
L6:
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow/mLongClickView Lcom/nd/android/u/ui/longClickMenu/LongClickView;
iconst_0
invokevirtual com/nd/android/u/ui/longClickMenu/LongClickView/isTopArrows(Z)V
goto L7
.limit locals 6
.limit stack 5
.end method
