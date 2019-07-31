.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/view/CommonCommentView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.inner class static synthetic inner com/nd/android/u/news/ui/view/CommonCommentView$1
.inner class private TextLengthWatcher inner com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher outer com/nd/android/u/news/ui/view/CommonCommentView
.inner class public static abstract interface onSendCommentListener inner com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener outer com/nd/android/u/news/ui/view/CommonCommentView

.field private final 'MAX_COUNT' I

.field private final 'WARN_COUNT' I

.field private 'btSend' Landroid/widget/Button;

.field private 'etContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'ivSmiley' Landroid/widget/ImageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mExtendReplyStr' Ljava/lang/String;

.field private 'mLengthWatcher' Lcom/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher;

.field private 'mListener' Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;

.field private 'mStrWord' Ljava/lang/String;

.field private 'mWordLength' I

.field private 'smileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'tvContentLength' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
aload 0
sipush 140
putfield com/nd/android/u/news/ui/view/CommonCommentView/MAX_COUNT I
aload 0
bipush 70
putfield com/nd/android/u/news/ui/view/CommonCommentView/WARN_COUNT I
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/CommonCommentView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
aload 0
sipush 140
putfield com/nd/android/u/news/ui/view/CommonCommentView/MAX_COUNT I
aload 0
bipush 70
putfield com/nd/android/u/news/ui/view/CommonCommentView/WARN_COUNT I
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/CommonCommentView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/view/CommonCommentView;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/CommonCommentView/dealLengthOfView(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/view/CommonCommentView;)I
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/news/ui/view/CommonCommentView;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/tvContentLength Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private dealLengthOfView(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
iconst_1
sipush 140
invokestatic com/product/android/utils/ContentUtils/getWordCount(Ljava/lang/String;ZI)[F
astore 3
aload 3
iconst_0
faload
ldc_w 140.0F
fcmpl
ifle L1
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mLengthWatcher Lcom/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/removeTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_0
aload 3
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mLengthWatcher Lcom/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
L1:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mStrWord Ljava/lang/String;
ifnonnull L2
aload 0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
getstatic com/nd/android/u/news/R$string/post_send_words_tip I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/news/ui/view/CommonCommentView/mStrWord Ljava/lang/String;
L2:
aload 0
aload 3
iconst_0
faload
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
putfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
sipush 140
if_icmple L3
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mStrWord Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L4:
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 1
bipush 47
invokevirtual java/lang/String/indexOf(I)I
istore 2
aload 3
new android/text/style/ForegroundColorSpan
dup
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/cor_post_send_word_length_legal I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
iload 2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/tvContentLength Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
L3:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mStrWord Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mWordLength I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
goto L4
.limit locals 4
.limit stack 6
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/common_comment_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ivSmiley I
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/view/CommonCommentView/ivSmiley Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/spenEtContent I
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tvContentLength I
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/view/CommonCommentView/tvContentLength Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/btSend I
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/news/ui/view/CommonCommentView/btSend Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/smileyView I
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/setInputLimited()V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
sipush 140
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;II)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
new com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/<init>(Lcom/nd/android/u/news/ui/view/CommonCommentView;Lcom/nd/android/u/news/ui/view/CommonCommentView$1;)V
putfield com/nd/android/u/news/ui/view/CommonCommentView/mLengthWatcher Lcom/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher;
aload 0
invokespecial com/nd/android/u/news/ui/view/CommonCommentView/initEvent()V
return
.limit locals 2
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/ivSmiley Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/btSend Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mLengthWatcher Lcom/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 2
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
aload 1
invokeinterface com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener/dispatchKeyEventPreIme(Landroid/view/KeyEvent;)V 1
L0:
aload 0
aload 1
invokespecial android/widget/LinearLayout/dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isSmileyViewShow()Z
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
iconst_0
istore 3
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/news/R$id/ivSmiley I
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
ifnull L3
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
invokeinterface com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener/onEditState()V 0
L3:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
goto L2
L0:
iload 2
getstatic com/nd/android/u/news/R$id/btSend I
if_icmpne L4
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mExtendReplyStr Ljava/lang/String;
ifnull L6
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mExtendReplyStr Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
L5:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
getstatic com/nd/android/u/news/R$string/str_toast_comment_not_null I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
ifnull L3
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
astore 4
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mExtendReplyStr Ljava/lang/String;
ifnull L7
iconst_1
istore 3
L7:
aload 4
aload 1
iload 3
invokeinterface com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener/onSendComment(Ljava/lang/String;Z)V 2
return
L4:
iload 2
getstatic com/nd/android/u/news/R$id/spenEtContent I
if_icmpne L3
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
ifnull L3
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
invokeinterface com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener/onEditState()V 0
return
.limit locals 5
.limit stack 3
.end method

.method public reSetView(Z)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/smileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
iload 1
ifeq L0
aload 0
aconst_null
putfield com/nd/android/u/news/ui/view/CommonCommentView/mExtendReplyStr Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
ldc ""
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public replyComment(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/news/ui/view/CommonCommentView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_comment_reply I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/news/ui/view/CommonCommentView/mExtendReplyStr Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 2
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual com/common/android/ui/widget/SpenEditText/setSelection(I)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/etContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
invokeinterface com/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener/onEditState()V 0
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setOnSendCommentListener(Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/CommonCommentView/mListener Lcom/nd/android/u/news/ui/view/CommonCommentView$onSendCommentListener;
return
.limit locals 2
.limit stack 2
.end method
