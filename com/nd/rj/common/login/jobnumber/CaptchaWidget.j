.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/CaptchaWidget
.super android/widget/LinearLayout
.inner class inner com/nd/rj/common/login/jobnumber/CaptchaWidget$1
.inner class private static FetchCaptchaTask inner com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask outer com/nd/rj/common/login/jobnumber/CaptchaWidget

.field private 'mCaptchaFetcher' Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;

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
invokespecial com/nd/rj/common/login/jobnumber/CaptchaWidget/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mCaptchaFetcher Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)Landroid/widget/ImageView;
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mIvCaptcha Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903802
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mViewRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mViewRoot Landroid/view/View;
ldc_w 2131624713
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mEtCaptcha Landroid/widget/EditText;
aload 0
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/getResources()Landroid/content/res/Resources;
ldc_w 2131494025
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mEtCaptcha Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new android/text/InputFilter$LengthFilter
dup
aload 1
invokevirtual java/lang/String/length()I
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mEtCaptcha Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mViewRoot Landroid/view/View;
ldc_w 2131624714
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mIvCaptcha Landroid/widget/ImageView;
aload 0
ldc_w 2131624715
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/findViewById(I)Landroid/view/View;
new com/nd/rj/common/login/jobnumber/CaptchaWidget$1
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/CaptchaWidget$1/<init>(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 7
.end method

.method public getCaptchaText()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mEtCaptcha Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isShow()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mViewRoot Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCaptchaFetcher(Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mCaptchaFetcher Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;
return
.limit locals 2
.limit stack 2
.end method

.method public showCaptcha(Landroid/graphics/drawable/Drawable;)V
aload 1
ifnull L0
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mViewRoot Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mEtCaptcha Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget/mIvCaptcha Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
