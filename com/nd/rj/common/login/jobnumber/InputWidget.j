.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/InputWidget
.super android/widget/RelativeLayout
.implements android/view/View$OnClickListener
.inner class inner com/nd/rj/common/login/jobnumber/InputWidget$1
.inner class inner com/nd/rj/common/login/jobnumber/InputWidget$2
.inner class public static abstract interface InputWidgetInteract inner com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract outer com/nd/rj/common/login/jobnumber/InputWidget

.field private 'mDropDown' Landroid/view/View;

.field private 'mEtInput' Landroid/widget/EditText;

.field private 'mPopupAnchorView' Landroid/view/View;

.field private 'mWidgetInteract' Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/jobnumber/InputWidget/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/jobnumber/InputWidget;)Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mWidgetInteract Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903803
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 0
aload 1
ldc_w 2131627036
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/rj/common/login/jobnumber/InputWidget/mDropDown Landroid/view/View;
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mDropDown Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
ldc_w 2131627038
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 2
aload 2
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
ldc_w 2131627040
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
new com/nd/rj/common/login/jobnumber/InputWidget$1
dup
aload 0
aload 2
invokespecial com/nd/rj/common/login/jobnumber/InputWidget$1/<init>(Lcom/nd/rj/common/login/jobnumber/InputWidget;Landroid/view/View;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 3
.limit stack 5
.end method

.method private onClickCleanInput()V
aload 0
invokevirtual com/nd/rj/common/login/jobnumber/InputWidget/cleanInput()V
return
.limit locals 1
.limit stack 1
.end method

.method private onClickDropDown()V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mPopupAnchorView Landroid/view/View;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mWidgetInteract Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
ifnull L1
new com/nd/rj/common/login/view/NdUserPopup
dup
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mPopupAnchorView Landroid/view/View;
new com/nd/rj/common/login/jobnumber/InputWidget$2
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/InputWidget$2/<init>(Lcom/nd/rj/common/login/jobnumber/InputWidget;)V
invokespecial com/nd/rj/common/login/view/NdUserPopup/<init>(Landroid/view/View;Lcom/nd/rj/common/login/view/NdUserPopup$IUserOper;)V
iconst_0
invokevirtual com/nd/rj/common/login/view/NdUserPopup/show(I)V
return
.limit locals 1
.limit stack 6
.end method

.method public cleanInput()V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public getText()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
ldc_w 2131627036
if_icmpne L0
aload 0
invokespecial com/nd/rj/common/login/jobnumber/InputWidget/onClickDropDown()V
L1:
return
L0:
iload 2
ldc_w 2131627038
if_icmpne L1
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mWidgetInteract Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
ifnonnull L2
aload 0
invokespecial com/nd/rj/common/login/jobnumber/InputWidget/onClickCleanInput()V
return
L2:
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mWidgetInteract Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
iconst_0
invokeinterface com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract/onCleanAllWidget(Z)V 1
return
.limit locals 3
.limit stack 2
.end method

.method public setDropDownViewState(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mDropDown Landroid/view/View;
iload 1
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setEditTextId(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setId(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setHint(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setHint(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setInputType(I)V
iload 1
sipush 128
if_icmpne L0
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
iload 1
iconst_1
ior
invokevirtual android/widget/EditText/setInputType(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
new com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod
dup
invokespecial com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/<init>()V
invokevirtual android/widget/EditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setInputType(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setInputWidgetInteract(Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/InputWidget/mWidgetInteract Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
return
.limit locals 2
.limit stack 2
.end method

.method public setPopupAnchorView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/InputWidget/mPopupAnchorView Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public setText(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget/mEtInput Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
