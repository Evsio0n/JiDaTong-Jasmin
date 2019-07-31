.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/Item_Input
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/cloud/view/widge/Item_Input$1
.inner class inner com/nd/android/u/cloud/view/widge/Item_Input$2

.field private 'btFunction' Landroid/widget/Button;

.field private 'etValue' Landroid/widget/EditText;

.field private 'mClearImageButton' Landroid/widget/ImageButton;

.field private 'mIsShowClear' Z

.field private 'tvName' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/Item_Input/mIsShowClear Z
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Z)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/Item_Input/mIsShowClear Z
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903422
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
iload 2
putfield com/nd/android/u/cloud/view/widge/Item_Input/mIsShowClear Z
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/Item_Input;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/Item_Input;)Z
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/mIsShowClear Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/Item_Input;)Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/mClearImageButton Landroid/widget/ImageButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method public diableEditText()V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setEnabled(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public getValue()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideName()V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/tvName Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initView(Landroid/content/Context;)V
aload 0
aload 0
ldc_w 2131624227
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/Item_Input/tvName Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625651
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624483
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/view/widge/Item_Input/mClearImageButton Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/mIsShowClear Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/mClearImageButton Landroid/widget/ImageButton;
new com/nd/android/u/cloud/view/widge/Item_Input$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/Item_Input$1/<init>(Lcom/nd/android/u/cloud/view/widge/Item_Input;)V
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
new com/nd/android/u/cloud/view/widge/Item_Input$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/Item_Input$2/<init>(Lcom/nd/android/u/cloud/view/widge/Item_Input;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/mClearImageButton Landroid/widget/ImageButton;
iconst_4
invokevirtual android/widget/ImageButton/setVisibility(I)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public setBackgrounds(II)V
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getChildAt(I)Landroid/view/View;
iload 1
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
iload 2
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setEtBackground(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setEtBackground(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setHint(I)V
iload 1
ifne L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setHint(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setInputType(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setInputType(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setMarginBottom(F)V
new android/widget/LinearLayout$LayoutParams
dup
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
invokespecial android/widget/LinearLayout$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getContext()Landroid/content/Context;
fload 1
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/bottomMargin I
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setPasswordType()V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
sipush 129
invokevirtual android/widget/EditText/setInputType(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setText(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/tvName Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/tvName Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextChangeListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setValue(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/etValue Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public showButton(ILandroid/view/View$OnClickListener;)Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131625650
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/view/widge/Item_Input/btFunction Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/btFunction Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/btFunction Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/btFunction Landroid/widget/Button;
aload 2
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/Item_Input/btFunction Landroid/widget/Button;
areturn
.limit locals 3
.limit stack 3
.end method
