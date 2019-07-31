.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/PopNewMessage
.super java/lang/Object

.field private static final 'WH' I = 20


.field private 'mContext' Landroid/content/Context;

.field private 'mCount' I

.field private 'mLayout' Landroid/widget/LinearLayout;

.field private 'mLeftOffset' I

.field private 'mParent' Landroid/view/View;

.field private 'mPopupWindow' Landroid/widget/PopupWindow;

.field private 'mTextView' Landroid/widget/TextView;

.field private 'mTopOffset' I

.field private 'mViewWH' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 40
putfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
aload 0
aload 1
putfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
ldc_w 20.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
aload 0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
putfield com/nd/android/u/ui/widge/PopNewMessage/mParent Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mParent Landroid/view/View;
invokevirtual android/view/View/getWidth()I
iconst_2
idiv
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
isub
putfield com/nd/android/u/ui/widge/PopNewMessage/mLeftOffset I
aload 0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mParent Landroid/view/View;
invokevirtual android/view/View/getHeight()I
iconst_4
imul
bipush 10
idiv
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
isub
putfield com/nd/android/u/ui/widge/PopNewMessage/mTopOffset I
aload 0
invokespecial com/nd/android/u/ui/widge/PopNewMessage/initView()V
return
.limit locals 2
.limit stack 3
.end method

.method private initView()V
aload 0
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/PopNewMessage/mLayout Landroid/widget/LinearLayout;
aload 0
new android/widget/TextView
dup
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
ldc_w 10.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
iconst_5
iconst_0
iconst_5
iconst_4
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/msgcount_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mLayout Landroid/widget/LinearLayout;
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mViewWH I
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
return
.limit locals 1
.limit stack 6
.end method

.method public dismiss()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
ifnull L1
L0:
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isShowing()Z
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setOnTextClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public show()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
iconst_1
iadd
putfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mCount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L3
L4:
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifne L4
L0:
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mParent Landroid/view/View;
bipush 17
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mLeftOffset I
aload 0
getfield com/nd/android/u/ui/widge/PopNewMessage/mTopOffset I
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 5
.end method
