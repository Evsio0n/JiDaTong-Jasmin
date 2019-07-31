.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SuggestSubitopinionActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$1
.inner class inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2
.inner class private GetSuggestTask inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask outer com/nd/android/u/cloud/activity/SuggestSubitopinionActivity
.inner class private SubmitTask inner com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask outer com/nd/android/u/cloud/activity/SuggestSubitopinionActivity

.field private static final 'BLOG_MAX_LEN' I = 140


.field private 'btnSubmit' Landroid/widget/Button;

.field private 'mUid' J

.field protected 'm_SuggestListView' Landroid/widget/ListView;

.field protected 'm_editConti' Landroid/widget/EditText;

.field protected 'm_editSubMessage' Landroid/widget/EditText;

.field protected 'm_suggestInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/rj/common/suggest/entity/SuggestInfo;>;"

.field protected 'm_suggestListAdapter' Lcom/nd/rj/common/suggest/view/SuggestListAdapter;

.field protected 'm_textViewHit' Landroid/widget/TextView;

.field private 'textwatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
aload 0
new com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$2/<init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)V
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/textwatcher Landroid/text/TextWatcher;
return
.limit locals 1
.limit stack 4
.end method

.method private SubmitOpint()Z
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
iconst_1
if_icmpge L0
aload 0
ldc_w 2131495277
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
ldc_w 2131495285
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L2:
iconst_1
ireturn
L1:
new com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask
dup
aload 0
aload 0
ldc_w 2131495286
invokespecial com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/<init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$SubmitTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
goto L2
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)Z
aload 0
invokespecial com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/SubmitOpint()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method InitData()V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/mUid J
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
ifnonnull L1
aload 0
new com/nd/rj/common/suggest/view/SuggestListAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestInfos Ljava/util/ArrayList;
invokespecial com/nd/rj/common/suggest/view/SuggestListAdapter/<init>(Landroid/content/Context;Ljava/util/AbstractList;)V
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_SuggestListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_suggestListAdapter Lcom/nd/rj/common/suggest/view/SuggestListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
new com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask
dup
aload 0
aload 0
ldc_w 2131495276
invokespecial com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/<init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$GetSuggestTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method SetCtrl()V
aload 0
aload 0
ldc_w 2131626830
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_textViewHit Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626831
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/textwatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
ldc_w 2131626833
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editConti Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131626835
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_SuggestListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_textViewHit Landroid/widget/TextView;
ldc_w 2131495275
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/m_editSubMessage Landroid/widget/EditText;
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

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/btnSubmit Landroid/widget/Button;
new com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SuggestSubitopinionActivity$1/<init>(Lcom/nd/android/u/cloud/activity/SuggestSubitopinionActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public millisToDateTime(Ljava/lang/String;J)Ljava/lang/String;
new java/util/Date
dup
lload 2
invokespecial java/util/Date/<init>(J)V
astore 4
new java/text/SimpleDateFormat
dup
aload 1
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 4
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903748
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/SetCtrl()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/InitData()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/initComponent()V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/titleText Landroid/widget/TextView;
ldc_w 2131493436
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
ldc_w 2131625527
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/btnSubmit Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/btnSubmit Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 1
iconst_0
iconst_0
iconst_1
ldc_w 20.0F
aload 0
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
invokestatic java/lang/Math/round(F)I
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/btnSubmit Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/btnSubmit Landroid/widget/Button;
ldc_w 2130838304
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SuggestSubitopinionActivity/initEvent()V
return
.limit locals 2
.limit stack 6
.end method
