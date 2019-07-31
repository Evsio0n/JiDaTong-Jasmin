.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/CaptchaView
.super android/widget/LinearLayout

.field private 'mEtCaptcha' Landroid/widget/EditText;

.field private 'mIvCaptcha' Landroid/widget/ImageView;

.field private 'mViewRoot' Landroid/view/View;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903185
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/cloud/view/widge/CaptchaView/mViewRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mViewRoot Landroid/view/View;
ldc_w 2131624713
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/view/widge/CaptchaView/mEtCaptcha Landroid/widget/EditText;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mViewRoot Landroid/view/View;
ldc_w 2131624714
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/view/widge/CaptchaView/mIvCaptcha Landroid/widget/ImageView;
return
.limit locals 3
.limit stack 4
.end method

.method public getCaptcha()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mEtCaptcha Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideCaptcha()V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mEtCaptcha Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mIvCaptcha Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mViewRoot Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public refreshCaptchaImage(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mIvCaptcha Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public showCaptcha(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mViewRoot Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mEtCaptcha Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/CaptchaView/mIvCaptcha Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method
