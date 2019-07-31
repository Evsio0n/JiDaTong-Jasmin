.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSAuthorized
.super android/app/Activity
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$1
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$2
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$3
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$4
.inner class private ProgressTask inner com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask outer com/nd/rj/common/microblogging/SNSAuthorized
.inner class public WebViewClientExt inner com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt outer com/nd/rj/common/microblogging/SNSAuthorized

.field private final 'SNS_AUTH_AUTHED' I

.field private final 'SNS_AUTH_CHECK_FOLLOW' I

.field private final 'SNS_AUTH_FAILURE' I

.field private final 'SNS_AUTH_SUCCESS' I

.field private final 'SNS_AUTH_TO_AUTH' I

.field private final 'SNS_AUTH_TO_FOLLOW' I

.field private 'initHandler' Landroid/os/Handler;

.field private 'mConfigSet' Lcom/nd/rj/common/microblogging/help/ConfigSet;

.field private 'm_btnBack' Landroid/widget/Button;

.field private 'm_nType' I

.field private 'm_nTypeName' Ljava/lang/String;

.field private 'm_textTip' Landroid/widget/TextView;

.field private 'm_tvSnsFollow' Landroid/widget/TextView;

.field private 'm_url' Ljava/lang/String;

.field private 'm_wv' Landroid/webkit/WebView;

.field private 'mcbSnsFollow' Landroid/widget/CheckBox;

.field private 'onBack' Landroid/view/View$OnClickListener;

.field private 'snsModleMgr' Lcom/nd/rj/common/microblogging/SNSModleMgr;

.field private 'webChromeClient' Landroid/webkit/WebChromeClient;

.field private 'webViewClient' Lcom/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_url Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_TO_AUTH I
aload 0
iconst_2
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_AUTHED I
aload 0
iconst_3
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_SUCCESS I
aload 0
iconst_4
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_FAILURE I
aload 0
iconst_5
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_TO_FOLLOW I
aload 0
bipush 6
putfield com/nd/rj/common/microblogging/SNSAuthorized/SNS_AUTH_CHECK_FOLLOW I
aload 0
new com/nd/rj/common/microblogging/SNSAuthorized$1
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$1/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
putfield com/nd/rj/common/microblogging/SNSAuthorized/onBack Landroid/view/View$OnClickListener;
aload 0
new com/nd/rj/common/microblogging/SNSAuthorized$2
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$2/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
putfield com/nd/rj/common/microblogging/SNSAuthorized/initHandler Landroid/os/Handler;
aload 0
new com/nd/rj/common/microblogging/SNSAuthorized$3
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$3/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
putfield com/nd/rj/common/microblogging/SNSAuthorized/webChromeClient Landroid/webkit/WebChromeClient;
aload 0
new com/nd/rj/common/microblogging/SNSAuthorized$4
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$4/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
putfield com/nd/rj/common/microblogging/SNSAuthorized/webViewClient Lcom/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt;
return
.limit locals 1
.limit stack 4
.end method

.method private InitData()V
aload 0
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getIntent()Landroid/content/Intent;
ldc "SNS_TYPE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_nType I
aload 0
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getIntent()Landroid/content/Intent;
ldc "SNS_TYPE_NAME"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_nTypeName Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_textTip Landroid/widget/TextView;
aload 0
getstatic com/nd/rj/common/R$string/sns_setTipMsg I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_nTypeName Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_tvSnsFollow Landroid/widget/TextView;
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
invokevirtual com/nd/rj/common/microblogging/SNSShare/getSnsFollowName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
putfield com/nd/rj/common/microblogging/SNSAuthorized/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
new com/nd/rj/common/microblogging/help/ConfigSet
dup
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getApplicationContext()Landroid/content/Context;
invokespecial com/nd/rj/common/microblogging/help/ConfigSet/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSAuthorized/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_nType I
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/setSnsType(I)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mcbSnsFollow Landroid/widget/CheckBox;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iconst_1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getFollowState(Z)Z
invokevirtual android/widget/CheckBox/setChecked(Z)V
new com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;Lcom/nd/rj/common/microblogging/SNSAuthorized$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized$ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private SetCtrl()V
aload 0
getstatic com/nd/rj/common/R$id/viewbkId I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
getstatic com/nd/rj/common/R$drawable/nd_sns_bg_02 I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/snsSetbackId I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_btnBack Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tipTitleId I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_textTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/wv I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
astore 1
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setSupportZoom(Z)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/webViewClient Lcom/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt;
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/webChromeClient Landroid/webkit/WebChromeClient;
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/requestFocus()Z
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_btnBack Landroid/widget/Button;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/onBack Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/sns_follow_check I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/rj/common/microblogging/SNSAuthorized/mcbSnsFollow Landroid/widget/CheckBox;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/tv_sns_follow_name I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_tvSnsFollow Landroid/widget/TextView;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/os/Handler;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/initHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/rj/common/microblogging/SNSAuthorized;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSAuthorized/m_url Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/webkit/WebView;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_wv Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_nTypeName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_textTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/rj/common/microblogging/SNSAuthorized;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_nType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/rj/common/microblogging/SNSAuthorized;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mcbSnsFollow Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method ProcessFollow()V
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/mcbSnsFollow Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
istore 2
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/m_nType I
iload 2
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/ProcessFollow(IZ)I
istore 1
iload 1
iconst_1
if_icmpne L0
aload 0
getstatic com/nd/rj/common/R$string/sns_follow_success I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getString(I)Ljava/lang/String;
astore 4
iload 2
ifeq L1
aload 0
getstatic com/nd/rj/common/R$string/sns_add I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getString(I)Ljava/lang/String;
astore 3
L2:
aload 0
aload 4
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
dup
iconst_1
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
invokevirtual com/nd/rj/common/microblogging/SNSShare/getSnsFollowName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L3:
return
L1:
aload 0
getstatic com/nd/rj/common/R$string/sns_cancel I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getString(I)Ljava/lang/String;
astore 3
goto L2
L0:
iload 1
ifne L3
aload 0
aload 0
getstatic com/nd/rj/common/R$string/sns_follow_failure I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
invokestatic com/nd/rj/common/microblogging/SNSShare/getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
invokevirtual com/nd/rj/common/microblogging/SNSShare/getSnsFollowName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 5
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_sns_authorized I
invokevirtual com/nd/rj/common/microblogging/SNSAuthorized/setContentView(I)V
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized/SetCtrl()V
aload 0
invokespecial com/nd/rj/common/microblogging/SNSAuthorized/InitData()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/rj/common/microblogging/SNSAuthorized/initHandler Landroid/os/Handler;
iconst_5
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
