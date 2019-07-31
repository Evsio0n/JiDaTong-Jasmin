.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/view/UISubmitOpinionAty
.super android/app/Activity
.implements android/view/View$OnClickListener
.inner class inner com/nd/rj/common/suggest/view/UISubmitOpinionAty$1
.inner class private GetSuggestTask inner com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask outer com/nd/rj/common/suggest/view/UISubmitOpinionAty
.inner class private SubmitTask inner com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask outer com/nd/rj/common/suggest/view/UISubmitOpinionAty

.field private static final 'BLOG_MAX_LEN' I = 140


.field private 'mProdId' Ljava/lang/String;

.field private 'mProdName' Ljava/lang/String;

.field private 'mUid' J

.field 'm_SuggestListView' Landroid/widget/ListView;

.field 'm_btnSubmin' Landroid/widget/TextView;

.field 'm_btnback' Landroid/widget/TextView;

.field 'm_editConti' Landroid/widget/EditText;

.field 'm_editSubMessage' Landroid/widget/EditText;

.field 'm_suggestInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/rj/common/suggest/entity/SuggestInfo;>;"

.field 'm_suggestListAdapter' Lcom/nd/rj/common/suggest/view/SuggestListAdapter;

.field 'm_textViewHit' Landroid/widget/TextView;

.field private 'textwatcher' Landroid/text/TextWatcher;

.field 'tvTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestInfos Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
aload 0
new com/nd/rj/common/suggest/view/UISubmitOpinionAty$1
dup
aload 0
invokespecial com/nd/rj/common/suggest/view/UISubmitOpinionAty$1/<init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)V
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/textwatcher Landroid/text/TextWatcher;
return
.limit locals 1
.limit stack 4
.end method

.method private SubmitOpint()Z
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
iconst_1
if_icmpge L0
aload 0
getstatic com/nd/rj/common/R$string/suggest_empty I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
ireturn
L0:
aload 1
invokevirtual java/lang/String/length()I
sipush 140
if_icmple L1
aload 0
getstatic com/nd/rj/common/R$string/suggest_too_long I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L2:
iconst_1
ireturn
L1:
new com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask
dup
aload 0
aload 0
getstatic com/nd/rj/common/R$string/suggest_uploading I
invokespecial com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/<init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty$SubmitTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
goto L2
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mProdId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)J
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mProdName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method InitData()V
aload 0
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getIntent()Landroid/content/Intent;
ldc "USER_ID"
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mUid J
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mUid J
aload 0
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getIntent()Landroid/content/Intent;
ldc "PROD_ID"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mProdId Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getIntent()Landroid/content/Intent;
ldc "PROD_NAME"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/mProdName Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestInfos Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestInfos Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
ifnonnull L1
aload 0
new com/nd/rj/common/suggest/view/SuggestListAdapter
dup
aload 0
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestInfos Ljava/util/ArrayList;
invokespecial com/nd/rj/common/suggest/view/SuggestListAdapter/<init>(Landroid/content/Context;Ljava/util/AbstractList;)V
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
L1:
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_SuggestListView Landroid/widget/ListView;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
new com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask
dup
aload 0
aload 0
getstatic com/nd/rj/common/R$string/suggest_downing I
invokespecial com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask/<init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty$GetSuggestTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method SetCtrl()V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvTitle I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/tvTitle Landroid/widget/TextView;
getstatic com/nd/rj/common/R$string/suggest_title I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvBack I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnback Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tvDo I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnSubmin Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnSubmin Landroid/widget/TextView;
getstatic com/nd/rj/common/R$string/suggest_submit I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnSubmin Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/textViewHit I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_textViewHit Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/edtBlogId I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/textwatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/contactId I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editConti Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/SuggestList I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_SuggestListView Landroid/widget/ListView;
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_textViewHit Landroid/widget/TextView;
getstatic com/nd/rj/common/R$string/suggest_remain I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnback Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_btnSubmin Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new android/text/InputFilter$LengthFilter
dup
sipush 140
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
return
.limit locals 1
.limit stack 7
.end method

.method public onBackPressed()V
aload 0
ldc "input_method"
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
invokespecial android/app/Activity/onBackPressed()V
return
.limit locals 1
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/rj/common/R$id/tvBack I
if_icmpne L0
aload 0
ldc "input_method"
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/rj/common/R$id/tvDo I
if_icmpne L1
aload 0
invokespecial com/nd/rj/common/suggest/view/UISubmitOpinionAty/SubmitOpint()Z
pop
return
.limit locals 3
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_suggest_submitopinion I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/setContentView(I)V
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/SetCtrl()V
aload 0
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/InitData()V
return
.limit locals 2
.limit stack 2
.end method
