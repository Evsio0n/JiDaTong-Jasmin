.bytecode 50.0
.class public synchronized com/product/android/ui/widget/SearchBarWidget
.super android/widget/LinearLayout
.inner class inner com/product/android/ui/widget/SearchBarWidget$1
.inner class inner com/product/android/ui/widget/SearchBarWidget$2
.inner class inner com/product/android/ui/widget/SearchBarWidget$3
.inner class inner com/product/android/ui/widget/SearchBarWidget$4
.inner class public static abstract interface OnSearchListener inner com/product/android/ui/widget/SearchBarWidget$OnSearchListener outer com/product/android/ui/widget/SearchBarWidget
.inner class public static abstract interface OnStateListener inner com/product/android/ui/widget/SearchBarWidget$OnStateListener outer com/product/android/ui/widget/SearchBarWidget

.field public static final 'LAYOUT_STATE_EDIT' I = 2


.field public static final 'LAYOUT_STATE_VIEW' I = 1


.field private final 'DEFAULTWIDTH' I

.field private 'clearinput' Landroid/widget/Button;

.field private 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mOnSearchListener' Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;

.field private 'mOnStateListener' Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;

.field private 'mSearchCancelButton' Landroid/widget/Button;

.field private 'mSearchCancelClickListener' Landroid/view/View$OnClickListener;

.field private 'mSearchCancelLayout' Landroid/widget/LinearLayout;

.field private 'mSearchEditText' Landroid/widget/EditText;

.field private 'mSearchEditTextOnClickListener' Landroid/view/View$OnTouchListener;

.field private 'mSearchRightImageView' Landroid/widget/ImageView;

.field private 'mSearchTextWatcher' Landroid/text/TextWatcher;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/product/android/ui/widget/SearchBarWidget/mOnSearchListener Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
aload 0
aconst_null
putfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
aload 0
bipush 90
putfield com/product/android/ui/widget/SearchBarWidget/DEFAULTWIDTH I
aload 0
new com/product/android/ui/widget/SearchBarWidget$1
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$1/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelClickListener Landroid/view/View$OnClickListener;
aload 0
new com/product/android/ui/widget/SearchBarWidget$2
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$2/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchEditTextOnClickListener Landroid/view/View$OnTouchListener;
aload 0
new com/product/android/ui/widget/SearchBarWidget$3
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$3/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchTextWatcher Landroid/text/TextWatcher;
aload 0
aload 1
invokespecial com/product/android/ui/widget/SearchBarWidget/viewInit(Landroid/content/Context;)V
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget/logicInit()V
aload 0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aconst_null
putfield com/product/android/ui/widget/SearchBarWidget/mOnSearchListener Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
aload 0
aconst_null
putfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
aload 0
bipush 90
putfield com/product/android/ui/widget/SearchBarWidget/DEFAULTWIDTH I
aload 0
new com/product/android/ui/widget/SearchBarWidget$1
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$1/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelClickListener Landroid/view/View$OnClickListener;
aload 0
new com/product/android/ui/widget/SearchBarWidget$2
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$2/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchEditTextOnClickListener Landroid/view/View$OnTouchListener;
aload 0
new com/product/android/ui/widget/SearchBarWidget$3
dup
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget$3/<init>(Lcom/product/android/ui/widget/SearchBarWidget;)V
putfield com/product/android/ui/widget/SearchBarWidget/mSearchTextWatcher Landroid/text/TextWatcher;
aload 0
aload 1
invokespecial com/product/android/ui/widget/SearchBarWidget/viewInit(Landroid/content/Context;)V
aload 0
invokespecial com/product/android/ui/widget/SearchBarWidget/logicInit()V
aload 0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/widget/SearchBarWidget;)Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnSearchListener Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/product/android/ui/widget/SearchBarWidget;)Landroid/widget/Button;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/clearinput Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getButtonTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
iload 1
ifeq L0
new android/view/animation/TranslateAnimation
dup
iload 2
i2f
fconst_0
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
L1:
aload 3
ldc2_w 300L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 3
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 3
areturn
L0:
new android/view/animation/TranslateAnimation
dup
fconst_0
iload 2
i2f
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
goto L1
.limit locals 4
.limit stack 6
.end method

.method private getImageTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
iload 1
ifeq L0
new android/view/animation/TranslateAnimation
dup
fconst_0
iload 2
ineg
i2f
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
L1:
aload 3
ldc2_w 300L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 3
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 3
areturn
L0:
new android/view/animation/TranslateAnimation
dup
iload 2
ineg
i2f
fconst_0
fconst_0
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 3
goto L1
.limit locals 4
.limit stack 6
.end method

.method private logicInit()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelButton Landroid/widget/Button;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelButton Landroid/widget/Button;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/clearinput Landroid/widget/Button;
ifnull L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/clearinput Landroid/widget/Button;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ifnull L2
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditTextOnClickListener Landroid/view/View$OnTouchListener;
invokevirtual android/widget/EditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchTextWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
L2:
aload 0
iconst_0
invokevirtual com/product/android/ui/widget/SearchBarWidget/setTextEditable(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private viewInit(Landroid/content/Context;)V
aload 1
getstatic com/nd/android/u/allcommon/R$layout/chat_search_bar_layout I
aload 0
invokestatic com/product/android/ui/widget/SearchBarWidget/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/search_cancel_layout I
invokevirtual com/product/android/ui/widget/SearchBarWidget/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/search_cancel_button I
invokevirtual com/product/android/ui/widget/SearchBarWidget/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelButton Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/btn_clear_input I
invokevirtual com/product/android/ui/widget/SearchBarWidget/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/widget/SearchBarWidget/clearinput Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/search_right I
invokevirtual com/product/android/ui/widget/SearchBarWidget/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/widget/SearchBarWidget/mSearchRightImageView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/search_text I
invokevirtual com/product/android/ui/widget/SearchBarWidget/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
return
.limit locals 2
.limit stack 3
.end method

.method public clearEditText()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpeq L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public getSearchText()Ljava/lang/String;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ifnonnull L0
ldc ""
areturn
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideInputStatus()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public isCancelLayoutVisible()Z
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method onFocusChange(Landroid/view/View;Z)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/product/android/ui/widget/SearchBarWidget$4
dup
aload 0
iload 2
invokespecial com/product/android/ui/widget/SearchBarWidget$4/<init>(Lcom/product/android/ui/widget/SearchBarWidget;Z)V
ldc2_w 500L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 3
.limit stack 5
.end method

.method public performClickCancel()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelButton Landroid/widget/Button;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelButton Landroid/widget/Button;
invokevirtual android/widget/Button/performClick()Z
pop
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setOnSearchListener(Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;)V
aload 1
ifnull L0
aload 0
aload 1
putfield com/product/android/ui/widget/SearchBarWidget/mOnSearchListener Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setOnStateListener(Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;)V
aload 1
ifnull L0
aload 0
aload 1
putfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setSearchBarState(I)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getWidth()I
istore 3
iload 3
istore 2
iload 3
ifne L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/widget/LinearLayout/measure(II)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getMeasuredWidth()I
istore 3
iload 3
istore 2
iload 3
ifne L0
bipush 90
istore 2
L0:
iload 1
tableswitch 1
L1
L2
default : L3
L3:
return
L1:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpeq L3
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
aload 0
iconst_0
iload 2
invokespecial com/product/android/ui/widget/SearchBarWidget/getButtonTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchRightImageView Landroid/widget/ImageView;
aload 0
iconst_0
bipush 10
invokespecial com/product/android/ui/widget/SearchBarWidget/getImageTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iconst_0
invokevirtual com/product/android/ui/widget/SearchBarWidget/setTextEditable(Z)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
ifnull L3
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
invokeinterface com/product/android/ui/widget/SearchBarWidget$OnStateListener/OnCancel()V 0
return
L2:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifeq L3
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
aload 0
iconst_1
iload 2
invokespecial com/product/android/ui/widget/SearchBarWidget/getButtonTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/LinearLayout/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchRightImageView Landroid/widget/ImageView;
aload 0
iconst_1
bipush 10
invokespecial com/product/android/ui/widget/SearchBarWidget/getImageTranslateAnimation(ZI)Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iconst_1
invokevirtual com/product/android/ui/widget/SearchBarWidget/setTextEditable(Z)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
ifnull L3
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnStateListener Lcom/product/android/ui/widget/SearchBarWidget$OnStateListener;
invokeinterface com/product/android/ui/widget/SearchBarWidget$OnStateListener/OnEditClick()V 0
return
.limit locals 4
.limit stack 4
.end method

.method public setSearchText(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchRightImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual android/widget/EditText/setSelection(I)V
aload 0
iconst_1
invokevirtual com/product/android/ui/widget/SearchBarWidget/setTextEditable(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTextEditable(Z)V
iload 1
ifeq L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_1
invokevirtual android/widget/EditText/setFocusableInTouchMode(Z)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_1
invokevirtual android/widget/EditText/setFocusable(Z)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setFocusableInTouchMode(Z)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setFocusable(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public showInputStatus()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public stop()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
ldc "test"
ldc "213123123"
invokestatic com/product/android/utils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchCancelLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
iconst_1
invokevirtual com/product/android/ui/widget/SearchBarWidget/setSearchBarState(I)V
ldc "test"
ldc "222222"
invokestatic com/product/android/utils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
ifnull L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
ifnull L1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mSearchEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L1:
ldc "test"
ldc "333333"
invokestatic com/product/android/utils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget/mOnSearchListener Lcom/product/android/ui/widget/SearchBarWidget$OnSearchListener;
invokeinterface com/product/android/ui/widget/SearchBarWidget$OnSearchListener/onSearchCancel()V 0
return
.limit locals 1
.limit stack 3
.end method
