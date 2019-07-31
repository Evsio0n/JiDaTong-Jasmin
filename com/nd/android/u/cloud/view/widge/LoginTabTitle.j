.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/LoginTabTitle
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/cloud/view/widge/LoginTabTitle$1
.inner class static synthetic inner com/nd/android/u/cloud/view/widge/LoginTabTitle$2
.inner class public static abstract interface OnLoginTabChangeListener inner com/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener outer com/nd/android/u/cloud/view/widge/LoginTabTitle

.field private 'mCurrentLoginType' Lcom/product/android/business/ApplicationVariable$LoginType;

.field private 'mListener' Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;

.field private 'mOnClick' Landroid/view/View$OnClickListener;

.field private 'mSelectedMark' Landroid/graphics/drawable/Drawable;

.field private 'mTv91Account' Landroid/widget/TextView;

.field private 'mTvJobNumber' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
new com/nd/android/u/cloud/view/widge/LoginTabTitle$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/LoginTabTitle$1/<init>(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)V
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mOnClick Landroid/view/View$OnClickListener;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903450
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 0
aload 1
ldc_w 2131625740
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
ldc_w 2131625741
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/LoginTabTitle/getResources()Landroid/content/res/Resources;
astore 4
aload 0
aload 4
ldc_w 2130839094
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mSelectedMark Landroid/graphics/drawable/Drawable;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
ldc "has_job_number_login"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
ldc_w 2131494166
invokevirtual android/widget/TextView/setText(I)V
return
L0:
aload 4
ldc_w 2131494166
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "`drawablePlaceholder`"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new android/text/SpannableString
dup
aload 2
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 4
ldc_w 2130839308
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 4
aload 4
iconst_0
iconst_0
aload 4
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
aload 4
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 3
new android/text/style/ImageSpan
dup
aload 4
iconst_1
invokespecial android/text/style/ImageSpan/<init>(Landroid/graphics/drawable/Drawable;I)V
aload 1
invokevirtual java/lang/String/length()I
aload 2
invokevirtual java/lang/String/length()I
bipush 17
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mListener Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setLoginTabChangeListener(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mListener Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setUI(Lcom/product/android/business/ApplicationVariable$LoginType;)V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/LoginTabTitle/getResources()Landroid/content/res/Resources;
astore 2
getstatic com/nd/android/u/cloud/view/widge/LoginTabTitle$2/$SwitchMap$com$product$android$business$ApplicationVariable$LoginType [I
aload 1
invokevirtual com/product/android/business/ApplicationVariable$LoginType/ordinal()I
iaload
tableswitch 1
L0
L1
default : L2
L2:
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mCurrentLoginType Lcom/product/android/business/ApplicationVariable$LoginType;
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aload 2
ldc_w 2131361792
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aconst_null
aconst_null
aconst_null
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mSelectedMark Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aload 2
ldc_w 2131362018
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L2
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aload 2
ldc_w 2131362018
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTvJobNumber Landroid/widget/TextView;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aload 2
ldc_w 2131361792
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mTv91Account Landroid/widget/TextView;
aconst_null
aconst_null
aconst_null
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle/mSelectedMark Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L2
.limit locals 3
.limit stack 5
.end method
