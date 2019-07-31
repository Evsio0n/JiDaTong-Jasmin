.bytecode 50.0
.class public synchronized com/flurry/android/CatalogActivity
.super android/app/Activity
.implements android/view/View$OnClickListener

.field private static volatile 'a' Ljava/lang/String;

.field private 'b' Landroid/webkit/WebView;

.field private 'c' Lcom/flurry/android/x;

.field private 'd' Ljava/util/List;

.field private 'e' Lcom/flurry/android/v;

.field private 'f' Lcom/flurry/android/p;

.method static <clinit>()V
ldc "<html><body><table height='100%' width='100%' border='0'><tr><td style='vertical-align:middle;text-align:center'>No recommendations available<p><button type='input' onClick='activity.finish()'>Back</button></td></tr></table></body></html>"
putstatic com/flurry/android/CatalogActivity/a Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/flurry/android/CatalogActivity/d Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
aload 0
getfield com/flurry/android/CatalogActivity/f Lcom/flurry/android/p;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Lcom/flurry/android/y;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aload 1
getfield com/flurry/android/y/a Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
aload 1
getfield com/flurry/android/y/b Ljava/util/List;
invokevirtual com/flurry/android/x/a(Ljava/util/List;)V
L1:
return
L2:
astore 2
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Error loading url: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/flurry/android/y/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/a(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic b(Lcom/flurry/android/CatalogActivity;)J
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
invokevirtual com/flurry/android/v/j()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/v;
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
areturn
.limit locals 1
.limit stack 1
.end method

.method public finish()V
aload 0
invokespecial android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
instanceof com/flurry/android/z
ifeq L0
new com/flurry/android/y
dup
invokespecial com/flurry/android/y/<init>()V
astore 2
aload 2
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getUrl()Ljava/lang/String;
putfield com/flurry/android/y/a Ljava/lang/String;
aload 2
new java/util/ArrayList
dup
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
invokevirtual com/flurry/android/x/b()Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/flurry/android/y/b Ljava/util/List;
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_5
if_icmple L1
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
iconst_0
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L1:
new com/flurry/android/y
dup
invokespecial com/flurry/android/y/<init>()V
astore 2
aload 1
checkcast com/flurry/android/z
astore 3
aload 0
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
aload 3
invokevirtual com/flurry/android/z/a()Lcom/flurry/android/p;
invokevirtual com/flurry/android/v/b(Lcom/flurry/android/p;)Lcom/flurry/android/p;
putfield com/flurry/android/CatalogActivity/f Lcom/flurry/android/p;
aload 3
aload 0
getfield com/flurry/android/CatalogActivity/f Lcom/flurry/android/p;
invokevirtual com/flurry/android/z/a(Lcom/flurry/android/p;)V
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
aload 3
invokevirtual com/flurry/android/z/a()Lcom/flurry/android/p;
invokevirtual com/flurry/android/v/a(Lcom/flurry/android/p;)Ljava/lang/String;
astore 3
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
invokevirtual com/flurry/android/v/i()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/flurry/android/y/a Ljava/lang/String;
aload 2
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokevirtual com/flurry/android/x/a(Landroid/content/Context;)Ljava/util/List;
putfield com/flurry/android/y/b Ljava/util/List;
aload 0
aload 2
invokespecial com/flurry/android/CatalogActivity/a(Lcom/flurry/android/y;)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
sipush 10000
if_icmpne L2
aload 0
invokevirtual com/flurry/android/CatalogActivity/finish()V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
sipush 10002
if_icmpne L3
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
invokevirtual com/flurry/android/x/a()V
return
L3:
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L4
aload 0
invokevirtual com/flurry/android/CatalogActivity/finish()V
return
L4:
aload 0
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
aload 0
getfield com/flurry/android/CatalogActivity/d Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
checkcast com/flurry/android/y
invokespecial com/flurry/android/CatalogActivity/a(Lcom/flurry/android/y;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 16973839
invokevirtual com/flurry/android/CatalogActivity/setTheme(I)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokestatic com/flurry/android/FlurryAgent/b()Lcom/flurry/android/v;
putfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
aload 0
invokevirtual com/flurry/android/CatalogActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ifnull L0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "o"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
aload 1
ifnull L0
aload 0
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
aload 1
invokevirtual java/lang/Long/longValue()J
invokevirtual com/flurry/android/v/b(J)Lcom/flurry/android/p;
putfield com/flurry/android/CatalogActivity/f Lcom/flurry/android/p;
L0:
new com/flurry/android/ac
dup
aload 0
aload 0
invokespecial com/flurry/android/ac/<init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
astore 1
aload 1
iconst_1
invokevirtual com/flurry/android/ac/setId(I)V
aload 1
ldc_w -16777216
invokevirtual com/flurry/android/ac/setBackgroundColor(I)V
aload 0
new android/webkit/WebView
dup
aload 0
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
putfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
iconst_2
invokevirtual android/webkit/WebView/setId(I)V
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setScrollBarStyle(I)V
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
iconst_m1
invokevirtual android/webkit/WebView/setBackgroundColor(I)V
aload 0
getfield com/flurry/android/CatalogActivity/f Lcom/flurry/android/p;
ifnull L1
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
new com/flurry/android/q
dup
aload 0
invokespecial com/flurry/android/q/<init>(Lcom/flurry/android/CatalogActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
L1:
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aload 0
ldc "activity"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
new com/flurry/android/x
dup
aload 0
aload 0
invokespecial com/flurry/android/x/<init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
putfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
iconst_3
invokevirtual com/flurry/android/x/setId(I)V
new android/widget/RelativeLayout
dup
aload 0
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
astore 2
aload 2
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 3
aload 3
bipush 10
aload 1
invokevirtual com/flurry/android/ac/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
aload 1
aload 3
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 3
aload 3
iconst_3
aload 1
invokevirtual com/flurry/android/ac/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 3
iconst_2
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
invokevirtual com/flurry/android/x/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aload 3
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 3
aload 3
bipush 12
aload 1
invokevirtual com/flurry/android/ac/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 2
aload 0
getfield com/flurry/android/CatalogActivity/c Lcom/flurry/android/x;
aload 3
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
invokevirtual com/flurry/android/CatalogActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnonnull L2
aconst_null
astore 1
L3:
aload 1
ifnonnull L4
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aconst_null
getstatic com/flurry/android/CatalogActivity/a Ljava/lang/String;
ldc "text/html"
ldc "utf-8"
aconst_null
invokevirtual android/webkit/WebView/loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L5:
aload 0
aload 2
invokevirtual com/flurry/android/CatalogActivity/setContentView(Landroid/view/View;)V
return
L2:
aload 1
ldc "u"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
goto L3
L4:
aload 0
getfield com/flurry/android/CatalogActivity/b Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
goto L5
.limit locals 4
.limit stack 6
.end method

.method protected onDestroy()V
aload 0
getfield com/flurry/android/CatalogActivity/e Lcom/flurry/android/v;
invokevirtual com/flurry/android/v/g()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method
