.bytecode 50.0
.class public synchronized com/product/android/ui/activity/HeaderActivity
.super com/product/android/ui/activity/BaseActivity
.inner class inner com/product/android/ui/activity/HeaderActivity$1

.field protected 'leftBtn' Landroid/widget/Button;

.field private 'onclick' Landroid/view/View$OnClickListener;

.field protected 'rightBtn' Landroid/widget/Button;

.field protected 'rightImgBtn' Landroid/widget/ImageView;

.field protected 'rightLy' Landroid/widget/LinearLayout;

.field protected 'rlHeader' Landroid/widget/RelativeLayout;

.field protected 'titleText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
new com/product/android/ui/activity/HeaderActivity$1
dup
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity$1/<init>(Lcom/product/android/ui/activity/HeaderActivity;)V
putfield com/product/android/ui/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ResourceAsColor" 
.end annotation
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/rl_header I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/activity/HeaderActivity/rlHeader Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/header_btn_left I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/activity/HeaderActivity/leftBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/header_btn_right I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/iv_header_right_btn I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/header_text_title I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/activity/HeaderActivity/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/header_layout_right I
invokevirtual com/product/android/ui/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/activity/HeaderActivity/rightLy Landroid/widget/LinearLayout;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rlHeader Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rlHeader Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/allcommon/R$drawable/xy_bg_header I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
L1:
aload 0
getfield com/product/android/ui/activity/HeaderActivity/leftBtn Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/titleText Landroid/widget/TextView;
aload 0
invokevirtual com/product/android/ui/activity/HeaderActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$color/xy_header_title I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L0:
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rlHeader Landroid/widget/RelativeLayout;
ifnull L2
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rlHeader Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/allcommon/R$drawable/header_bg I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
L2:
aload 0
getfield com/product/android/ui/activity/HeaderActivity/leftBtn Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/bt_header_return_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/leftBtn Landroid/widget/Button;
aload 0
getfield com/product/android/ui/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
aload 0
getfield com/product/android/ui/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
aload 0
getfield com/product/android/ui/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected leftBtnHandle()V
aload 0
invokevirtual com/product/android/ui/activity/HeaderActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method

.method protected setActivityTitle(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/titleText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setEnableRightBtn(Z)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightBtnBackground(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightBtnText(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightBtnTextColor(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setTextColor(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightBtnVisiable(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightImgBtnBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightImgBtnDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightImgBtnVisiable(I)V
aload 0
getfield com/product/android/ui/activity/HeaderActivity/rightImgBtn Landroid/widget/ImageView;
iload 1
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
