.bytecode 50.0
.class public synchronized com/weibo/sdk/android/WeiboDialog
.super android/app/Dialog
.inner class private WeiboWebViewClient inner com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient outer com/weibo/sdk/android/WeiboDialog

.field static 'FILL' Landroid/widget/FrameLayout$LayoutParams;

.field private static final 'TAG' Ljava/lang/String; = "Weibo-WebView"

.field private static 'bottom_margin' I

.field private static 'left_margin' I

.field private static 'right_margin' I

.field private static 'theme' I

.field private static 'top_margin' I

.field private 'mContent' Landroid/widget/RelativeLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'mListener' Lcom/weibo/sdk/android/WeiboAuthListener;

.field private 'mSpinner' Landroid/app/ProgressDialog;

.field private 'mUrl' Ljava/lang/String;

.field private 'mWebView' Landroid/webkit/WebView;

.field private 'webViewContainer' Landroid/widget/RelativeLayout;

.method static <clinit>()V
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
putstatic com/weibo/sdk/android/WeiboDialog/FILL Landroid/widget/FrameLayout$LayoutParams;
ldc_w 16973840
putstatic com/weibo/sdk/android/WeiboDialog/theme I
iconst_0
putstatic com/weibo/sdk/android/WeiboDialog/left_margin I
iconst_0
putstatic com/weibo/sdk/android/WeiboDialog/top_margin I
iconst_0
putstatic com/weibo/sdk/android/WeiboDialog/right_margin I
iconst_0
putstatic com/weibo/sdk/android/WeiboDialog/bottom_margin I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V
aload 0
aload 1
getstatic com/weibo/sdk/android/WeiboDialog/theme I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/weibo/sdk/android/WeiboDialog/mUrl Ljava/lang/String;
aload 0
aload 3
putfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
aload 1
putfield com/weibo/sdk/android/WeiboDialog/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$0(Lcom/weibo/sdk/android/WeiboDialog;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/weibo/sdk/android/WeiboDialog;Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/weibo/sdk/android/WeiboDialog/handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mSpinner Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/webkit/WebView;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 2
invokestatic com/weibo/sdk/android/util/Utility/parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
astore 1
aload 1
ldc "error"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
ldc "error_code"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
ifnonnull L0
aload 3
ifnonnull L0
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 1
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onComplete(Landroid/os/Bundle;)V 1
return
L0:
aload 3
ifnonnull L1
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboException
dup
aload 2
iconst_0
invokespecial com/weibo/sdk/android/WeiboException/<init>(Ljava/lang/String;I)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
return
L1:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboException
dup
aload 2
aload 3
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial com/weibo/sdk/android/WeiboException/<init>(Ljava/lang/String;I)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V 1
return
.limit locals 4
.limit stack 5
.end method

.method private parseDimens()Z
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L8
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L9 to L10 using L8
.catch java/io/IOException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/io/IOException from L11 to L12 using L13
.catch org/xmlpull/v1/XmlPullParserException from L14 to L15 using L8
.catch java/io/IOException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch org/xmlpull/v1/XmlPullParserException from L16 to L17 using L8
.catch java/io/IOException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch org/xmlpull/v1/XmlPullParserException from L18 to L19 using L8
.catch java/io/IOException from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch org/xmlpull/v1/XmlPullParserException from L20 to L21 using L8
.catch java/io/IOException from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch org/xmlpull/v1/XmlPullParserException from L22 to L23 using L8
.catch java/io/IOException from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/io/IOException from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch all from L26 to L27 using L3
.catch java/io/IOException from L28 to L29 using L30
.catch org/xmlpull/v1/XmlPullParserException from L31 to L32 using L8
.catch java/io/IOException from L31 to L32 using L2
.catch all from L31 to L32 using L3
.catch org/xmlpull/v1/XmlPullParserException from L33 to L34 using L8
.catch java/io/IOException from L33 to L34 using L2
.catch all from L33 to L34 using L3
.catch java/io/IOException from L35 to L36 using L37
.catch org/xmlpull/v1/XmlPullParserException from L38 to L39 using L8
.catch java/io/IOException from L38 to L39 using L2
.catch all from L38 to L39 using L3
.catch org/xmlpull/v1/XmlPullParserException from L40 to L41 using L8
.catch java/io/IOException from L40 to L41 using L2
.catch all from L40 to L41 using L3
.catch org/xmlpull/v1/XmlPullParserException from L42 to L43 using L8
.catch java/io/IOException from L42 to L43 using L2
.catch all from L42 to L43 using L3
.catch org/xmlpull/v1/XmlPullParserException from L44 to L45 using L8
.catch java/io/IOException from L44 to L45 using L2
.catch all from L44 to L45 using L3
iconst_0
istore 6
iconst_0
istore 5
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
astore 10
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fstore 1
aconst_null
astore 9
aconst_null
astore 8
iload 6
istore 3
L0:
aload 10
ldc "values/dimens.xml"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 10
L1:
aload 10
astore 8
iload 6
istore 3
aload 10
astore 9
L4:
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 11
L5:
iload 5
istore 4
aload 10
astore 8
iload 6
istore 3
aload 10
astore 9
L6:
aload 11
aload 10
ldc "utf-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
L7:
iload 5
istore 4
aload 10
astore 8
iload 6
istore 3
aload 10
astore 9
L9:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 2
L10:
iconst_1
istore 6
iconst_1
istore 7
iconst_1
istore 5
L46:
iload 2
iconst_1
if_icmpne L47
iload 5
istore 4
L48:
iload 4
istore 5
aload 10
ifnull L49
L11:
aload 10
invokevirtual java/io/InputStream/close()V
L12:
iload 4
istore 5
L49:
iload 5
ireturn
L47:
iload 2
tableswitch 2
L50
default : L51
L51:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L14:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
L15:
goto L46
L50:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L16:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "dimen"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L51
L17:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L18:
aload 11
aconst_null
ldc "name"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 12
L19:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L20:
ldc "weibosdk_dialog_left_margin"
aload 12
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L52
L21:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L22:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
fload 1
fmul
f2i
putstatic com/weibo/sdk/android/WeiboDialog/left_margin I
L23:
goto L51
L8:
astore 11
aload 10
astore 8
iload 4
istore 3
aload 10
astore 9
L24:
aload 11
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
L25:
goto L48
L2:
astore 10
aload 8
astore 9
L26:
aload 10
invokevirtual java/io/IOException/printStackTrace()V
L27:
iload 3
istore 5
aload 8
ifnull L49
L28:
aload 8
invokevirtual java/io/InputStream/close()V
L29:
iload 3
ireturn
L30:
astore 8
aload 8
invokevirtual java/io/IOException/printStackTrace()V
iload 3
ireturn
L52:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L31:
ldc "weibosdk_dialog_top_margin"
aload 12
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L53
L32:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L33:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
fload 1
fmul
f2i
putstatic com/weibo/sdk/android/WeiboDialog/top_margin I
L34:
goto L51
L3:
astore 8
aload 9
ifnull L36
L35:
aload 9
invokevirtual java/io/InputStream/close()V
L36:
aload 8
athrow
L53:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L38:
ldc "weibosdk_dialog_right_margin"
aload 12
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L54
L39:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L40:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
fload 1
fmul
f2i
putstatic com/weibo/sdk/android/WeiboDialog/right_margin I
L41:
goto L51
L54:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L42:
ldc "weibosdk_dialog_bottom_margin"
aload 12
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L51
L43:
iload 6
istore 4
aload 10
astore 8
iload 7
istore 3
aload 10
astore 9
L44:
aload 11
invokeinterface org/xmlpull/v1/XmlPullParser/nextText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
fload 1
fmul
f2i
putstatic com/weibo/sdk/android/WeiboDialog/bottom_margin I
L45:
goto L51
L37:
astore 9
aload 9
invokevirtual java/io/IOException/printStackTrace()V
goto L36
L13:
astore 8
aload 8
invokevirtual java/io/IOException/printStackTrace()V
iload 4
ireturn
.limit locals 13
.limit stack 3
.end method

.method private setUpWebView()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L14
.catch all from L12 to L13 using L3
.catch java/io/IOException from L15 to L16 using L17
.catch java/lang/Exception from L18 to L19 using L14
.catch all from L18 to L19 using L3
.catch all from L20 to L21 using L3
.catch java/io/IOException from L22 to L23 using L24
.catch java/lang/Exception from L25 to L26 using L14
.catch all from L25 to L26 using L3
.catch java/lang/Exception from L27 to L28 using L14
.catch all from L27 to L28 using L3
.catch java/lang/Exception from L29 to L30 using L14
.catch all from L29 to L30 using L3
.catch java/io/IOException from L31 to L32 using L33
aload 0
new android/widget/RelativeLayout
dup
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
putfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
aload 0
new android/webkit/WebView
dup
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
putfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_0
invokevirtual android/webkit/WebSettings/setSavePassword(Z)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
new com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient
dup
aload 0
aconst_null
invokespecial com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/<init>(Lcom/weibo/sdk/android/WeiboDialog;Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContext Landroid/content/Context;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mUrl Ljava/lang/String;
invokestatic com/weibo/sdk/android/WeiboDialog/synCookies(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mUrl Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/requestFocus()Z
pop
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setScrollBarStyle(I)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
iconst_4
invokevirtual android/webkit/WebView/setVisibility(I)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 6
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 7
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContent Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setBackgroundColor(I)V
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
astore 5
aconst_null
astore 3
aconst_null
astore 4
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 8
aload 8
getfield android/util/DisplayMetrics/density F
fstore 1
L0:
aload 5
ldc "weibosdk_dialog_bg.9.png"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 5
L1:
aload 5
astore 4
aload 5
astore 3
L4:
aload 7
ldc_w 10.0F
fload 1
fmul
f2i
putfield android/widget/RelativeLayout$LayoutParams/leftMargin I
L5:
aload 5
astore 4
aload 5
astore 3
L6:
aload 7
ldc_w 10.0F
fload 1
fmul
f2i
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
L7:
aload 5
astore 4
aload 5
astore 3
L8:
aload 7
ldc_w 10.0F
fload 1
fmul
f2i
putfield android/widget/RelativeLayout$LayoutParams/rightMargin I
L9:
aload 5
astore 4
aload 5
astore 3
L10:
aload 7
ldc_w 10.0F
fload 1
fmul
f2i
putfield android/widget/RelativeLayout$LayoutParams/bottomMargin I
L11:
aload 5
astore 4
L34:
aload 4
ifnonnull L35
aload 4
astore 5
aload 4
astore 3
L12:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
ldc_w 2130837536
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
L13:
aload 4
ifnull L16
L15:
aload 4
invokevirtual java/io/InputStream/close()V
L16:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
aload 7
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
bipush 17
invokevirtual android/widget/RelativeLayout/setGravity(I)V
aload 0
invokespecial com/weibo/sdk/android/WeiboDialog/parseDimens()Z
ifeq L36
aload 6
getstatic com/weibo/sdk/android/WeiboDialog/left_margin I
putfield android/widget/RelativeLayout$LayoutParams/leftMargin I
fload 1
f2d
dconst_1
dcmpl
ifne L37
aload 6
bipush 15
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
L38:
aload 6
getstatic com/weibo/sdk/android/WeiboDialog/right_margin I
putfield android/widget/RelativeLayout$LayoutParams/rightMargin I
ldc2_w 1.5D
aload 8
getfield android/util/DisplayMetrics/widthPixels I
getstatic com/weibo/sdk/android/WeiboDialog/left_margin I
iconst_2
imul
isub
i2d
dmul
d2i
istore 2
aload 6
aload 8
getfield android/util/DisplayMetrics/heightPixels I
aload 6
getfield android/widget/RelativeLayout$LayoutParams/topMargin I
isub
iload 2
isub
putfield android/widget/RelativeLayout$LayoutParams/bottomMargin I
L39:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContent Landroid/widget/RelativeLayout;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
aload 6
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
L2:
astore 9
aload 4
astore 5
aload 4
astore 3
L18:
aload 9
invokevirtual java/lang/Exception/printStackTrace()V
L19:
goto L34
L14:
astore 4
aload 5
astore 3
L20:
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
L21:
aload 5
ifnull L16
L22:
aload 5
invokevirtual java/io/InputStream/close()V
L23:
goto L16
L24:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L16
L35:
aload 4
astore 5
aload 4
astore 3
L25:
aload 4
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 9
L26:
aload 4
astore 5
aload 4
astore 3
L27:
new android/graphics/drawable/NinePatchDrawable
dup
aload 9
aload 9
invokevirtual android/graphics/Bitmap/getNinePatchChunk()[B
new android/graphics/Rect
dup
iconst_0
iconst_0
iconst_0
iconst_0
invokespecial android/graphics/Rect/<init>(IIII)V
aconst_null
invokespecial android/graphics/drawable/NinePatchDrawable/<init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
astore 9
L28:
aload 4
astore 5
aload 4
astore 3
L29:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/webViewContainer Landroid/widget/RelativeLayout;
aload 9
invokevirtual android/widget/RelativeLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L30:
goto L13
L3:
astore 4
aload 3
ifnull L32
L31:
aload 3
invokevirtual java/io/InputStream/close()V
L32:
aload 4
athrow
L33:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L32
L17:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L16
L37:
fload 1
f2d
ldc2_w 1.5D
dcmpl
ifne L40
aload 6
bipush 25
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
goto L38
L40:
aload 6
aload 8
getfield android/util/DisplayMetrics/heightPixels I
bipush 15
idiv
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
goto L38
L36:
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 3
aload 6
aload 3
ldc_w 2131099651
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/RelativeLayout$LayoutParams/leftMargin I
aload 6
aload 3
ldc_w 2131099653
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/RelativeLayout$LayoutParams/rightMargin I
aload 6
aload 3
ldc_w 2131099652
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
aload 6
aload 3
ldc_w 2131099654
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield android/widget/RelativeLayout$LayoutParams/bottomMargin I
goto L39
.limit locals 10
.limit stack 10
.end method

.method public static synCookies(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
pop
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
astore 0
aload 0
iconst_1
invokevirtual android/webkit/CookieManager/setAcceptCookie(Z)V
aload 0
invokevirtual android/webkit/CookieManager/removeSessionCookie()V
aload 0
invokevirtual android/webkit/CookieManager/removeAllCookie()V
invokestatic android/webkit/CookieSyncManager/getInstance()Landroid/webkit/CookieSyncManager;
invokevirtual android/webkit/CookieSyncManager/sync()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onBack()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mSpinner Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
ifnull L1
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/stopLoading()V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/destroy()V
L1:
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/dismiss()V
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
new android/app/ProgressDialog
dup
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/weibo/sdk/android/WeiboDialog/mSpinner Landroid/app/ProgressDialog;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mSpinner Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/requestWindowFeature(I)Z
pop
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mSpinner Landroid/app/ProgressDialog;
ldc "Loading..."
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
iconst_1
invokevirtual com/weibo/sdk/android/WeiboDialog/requestWindowFeature(I)Z
pop
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getWindow()Landroid/view/Window;
iconst_0
iconst_0
invokevirtual android/view/Window/setFeatureDrawableAlpha(II)V
aload 0
new android/widget/RelativeLayout
dup
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
putfield com/weibo/sdk/android/WeiboDialog/mContent Landroid/widget/RelativeLayout;
aload 0
invokevirtual com/weibo/sdk/android/WeiboDialog/getWindow()Landroid/view/Window;
bipush 16
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 0
invokespecial com/weibo/sdk/android/WeiboDialog/setUpWebView()V
aload 0
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContent Landroid/widget/RelativeLayout;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual com/weibo/sdk/android/WeiboDialog/addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContext Landroid/content/Context;
invokestatic com/weibo/sdk/android/util/Utility/isNetworkAvailable(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContext Landroid/content/Context;
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mContext Landroid/content/Context;
ldc_w 2131165226
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/weibo/sdk/android/WeiboDialog/mListener Lcom/weibo/sdk/android/WeiboAuthListener;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onCancel()V 0
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Dialog/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
