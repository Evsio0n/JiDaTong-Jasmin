.bytecode 50.0
.class public final synchronized com/alipay/sdk/util/i
.super java/lang/Object
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" "DefaultLocale" 
.end annotation
.inner class public static final a inner com/alipay/sdk/util/i$a outer com/alipay/sdk/util/i

.field static final 'a' Ljava/lang/String; = "com.alipay.android.app"

.field public static final 'b' Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final 'c' Ljava/lang/String; = "7.0.0"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
aload 0
ldc "\\."
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 5
aload 1
ldc "\\."
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/size()I 0
aload 5
invokeinterface java/util/List/size()I 0
invokestatic java/lang/Math/max(II)I
istore 3
L0:
aload 4
invokeinterface java/util/List/size()I 0
iload 3
if_icmpge L1
aload 4
ldc "0"
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 5
invokeinterface java/util/List/size()I 0
iload 3
if_icmpge L2
aload 5
ldc "0"
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
iconst_0
istore 2
L3:
iload 2
iload 3
if_icmpge L4
aload 4
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
if_icmpeq L5
aload 4
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
isub
ireturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
iconst_0
ireturn
.limit locals 6
.limit stack 3
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Throwable from L4 to L5 using L6
.catch java/lang/Throwable from L7 to L8 using L9
.catch java/lang/Throwable from L10 to L11 using L9
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
aload 0
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invokevirtual android/webkit/CookieSyncManager/sync()V
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
aload 1
aload 2
invokevirtual android/webkit/CookieManager/setCookie(Ljava/lang/String;Ljava/lang/String;)V
invokestatic android/webkit/CookieSyncManager/getInstance()Landroid/webkit/CookieSyncManager;
invokevirtual android/webkit/CookieSyncManager/sync()V
L12:
new android/widget/LinearLayout
dup
aload 0
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 3
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 0
aload 3
aload 4
invokevirtual android/app/Activity/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/webkit/WebView
dup
aload 0
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
astore 2
aload 4
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 2
iconst_0
invokevirtual android/webkit/WebView/setVisibility(I)V
aload 3
aload 2
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 2
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual android/webkit/WebSettings/getUserAgentString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic com/alipay/sdk/util/i/c(Landroid/content/Context;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebSettings/setUserAgentString(Ljava/lang/String;)V
aload 3
getstatic android/webkit/WebSettings$RenderPriority/HIGH Landroid/webkit/WebSettings$RenderPriority;
invokevirtual android/webkit/WebSettings/setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
aload 3
iconst_1
invokevirtual android/webkit/WebSettings/setSupportMultipleWindows(Z)V
aload 3
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 3
iconst_0
invokevirtual android/webkit/WebSettings/setSavePassword(Z)V
aload 3
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptCanOpenWindowsAutomatically(Z)V
aload 3
aload 3
invokevirtual android/webkit/WebSettings/getMinimumFontSize()I
bipush 8
iadd
invokevirtual android/webkit/WebSettings/setMinimumFontSize(I)V
aload 3
iconst_0
invokevirtual android/webkit/WebSettings/setAllowFileAccess(Z)V
aload 3
getstatic android/webkit/WebSettings$TextSize/NORMAL Landroid/webkit/WebSettings$TextSize;
invokevirtual android/webkit/WebSettings/setTextSize(Landroid/webkit/WebSettings$TextSize;)V
aload 2
iconst_1
invokevirtual android/webkit/WebView/setVerticalScrollbarOverlay(Z)V
aload 2
new com/alipay/sdk/util/j
dup
aload 0
invokespecial com/alipay/sdk/util/j/<init>(Landroid/app/Activity;)V
invokevirtual android/webkit/WebView/setDownloadListener(Landroid/webkit/DownloadListener;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 7
if_icmplt L4
L0:
aload 2
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "setDomStorageEnabled"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 0
L1:
aload 0
ifnull L4
L3:
aload 0
aload 2
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
aload 2
ldc "searchBoxJavaBridge_"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
aload 2
ldc "accessibility"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
aload 2
ldc "accessibilityTraversal"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
L5:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L13
aload 2
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setCacheMode(I)V
L13:
aload 2
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 2
areturn
L6:
astore 0
L7:
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "removeJavascriptInterface"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 0
L8:
aload 0
ifnull L5
L10:
aload 0
aload 2
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "searchBoxJavaBridge_"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 2
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "accessibility"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 2
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "accessibilityTraversal"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L11:
goto L5
L9:
astore 0
goto L5
L2:
astore 0
goto L4
.limit locals 5
.limit stack 6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/i$a;
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
bipush 64
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/PackageInfo
astore 0
aload 0
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
new com/alipay/sdk/util/i$a
dup
invokespecial com/alipay/sdk/util/i$a/<init>()V
astore 1
aload 1
aload 0
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
iconst_0
aaload
invokevirtual android/content/pm/Signature/toByteArray()[B
putfield com/alipay/sdk/util/i$a/a [B
aload 1
aload 0
getfield android/content/pm/PackageInfo/versionCode I
putfield com/alipay/sdk/util/i$a/b I
aload 1
areturn
L1:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public static a()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "Android "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L6 to L7 using L2
L0:
aload 2
aload 0
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 0
invokevirtual java/lang/String/length()I
iload 3
iadd
istore 4
iload 4
aload 0
invokevirtual java/lang/String/length()I
if_icmpgt L8
L1:
ldc ""
areturn
L8:
iconst_0
istore 3
L3:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 2
aload 1
iload 4
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 3
L4:
iload 3
ifgt L6
L5:
aload 2
iload 4
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L6:
aload 2
iload 4
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 5
.limit stack 3
.end method

.method public static a([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "X.509"
invokestatic java/security/cert/CertificateFactory/getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
new java/io/ByteArrayInputStream
dup
aload 0
invokespecial java/io/ByteArrayInputStream/<init>([B)V
invokevirtual java/security/cert/CertificateFactory/generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
checkcast java/security/cert/X509Certificate
invokevirtual java/security/cert/X509Certificate/getPublicKey()Ljava/security/PublicKey;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
aload 0
ldc "modulus"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L3
aload 0
aload 0
ldc "modulus"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
bipush 8
iadd
aload 0
ldc ","
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
L3:
aconst_null
areturn
.limit locals 1
.limit stack 4
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
aaload
astore 5
aload 5
ldc "="
iconst_1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 3
aload 4
aload 5
iconst_0
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
aload 5
iload 3
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public static a(Landroid/content/Context;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.alipay.android.app"
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnonnull L3
iconst_0
ireturn
L3:
iconst_1
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
aload 0
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
istore 1
iload 1
iconst_1
iand
ifne L0
iload 1
sipush 128
iand
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L12
.catch java/lang/Exception from L11 to L13 using L12
.catch java/lang/Exception from L14 to L15 using L12
.catch java/lang/Exception from L15 to L16 using L12
.catch java/lang/Exception from L17 to L18 using L12
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L19
L20:
iconst_1
ireturn
L19:
aload 1
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "alipays://platformapi/startApp?"
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
aload 1
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "intent://platformapi/startapp?"
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L21
L0:
aload 2
ldc "com.eg.android.AlipayGphone"
invokestatic com/alipay/sdk/util/i/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/i$a;
astore 0
L1:
aload 0
ifnull L20
L3:
aload 0
getfield com/alipay/sdk/util/i$a/a [B
invokestatic com/alipay/sdk/util/i/a([B)Ljava/lang/String;
astore 0
L4:
aload 0
ifnull L22
L5:
aload 0
ldc "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L22
ldc "biz"
ldc "ClientSignError"
aload 0
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L6:
iconst_1
ireturn
L22:
aload 1
astore 0
L7:
aload 1
ldc "intent://platformapi/startapp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L8
aload 1
ldc "intent://platformapi/startapp?"
ldc "alipays://platformapi/startApp?"
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L8:
aload 2
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 0
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L9:
iconst_1
ireturn
L21:
aload 1
ldc "sdklite://h5quit"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L23
aload 1
ldc "http://m.alipay.com/?action=h5quit"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L24
L23:
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
aload 2
invokevirtual android/app/Activity/finish()V
iconst_1
ireturn
L24:
aload 1
ldc "sdklite://h5quit?result="
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L25
L10:
aload 1
aload 1
ldc "sdklite://h5quit?result="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
bipush 24
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
aload 0
aload 0
ldc "&end_code="
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
bipush 10
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
iload 3
getstatic com/alipay/sdk/app/i/a Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
if_icmpeq L11
iload 3
getstatic com/alipay/sdk/app/i/g Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
if_icmpne L17
L11:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 1
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
aload 0
ldc "sdklite://h5quit?result="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
bipush 24
iadd
aload 0
ldc "&end_code="
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L13:
aload 1
astore 0
L14:
aload 1
ldc "&return_url="
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L15
aload 1
ldc "&return_url="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_0
aaload
astore 0
aload 1
ldc "&return_url="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
bipush 12
iadd
istore 4
aload 5
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&return_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iload 4
aload 1
ldc "\"&"
iload 4
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
aload 1
ldc "\"&"
iload 4
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L15:
iload 3
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 1
aload 1
invokevirtual com/alipay/sdk/app/i/a()I
aload 1
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
aload 0
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
L16:
aload 2
new com/alipay/sdk/util/k
dup
aload 2
invokespecial com/alipay/sdk/util/k/<init>(Landroid/app/Activity;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
iconst_1
ireturn
L17:
getstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 0
aload 0
invokevirtual com/alipay/sdk/app/i/a()I
aload 0
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
L18:
goto L16
L12:
astore 0
getstatic com/alipay/sdk/app/i/e Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 0
aload 0
invokevirtual com/alipay/sdk/app/i/a()I
aload 0
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putstatic com/alipay/sdk/app/h/a Ljava/lang/String;
goto L16
L25:
aload 0
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
L2:
astore 0
iconst_1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public static b()Ljava/lang/String;
invokestatic com/alipay/sdk/util/i/d()Ljava/lang/String;
astore 2
aload 2
ldc "-"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 0
aload 2
astore 1
iload 0
iconst_m1
if_icmpeq L0
aload 2
iconst_0
iload 0
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L0:
aload 1
ldc "\n"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 0
aload 1
astore 2
iload 0
iconst_m1
if_icmpeq L1
aload 1
iconst_0
iload 0
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L1:
new java/lang/StringBuilder
dup
ldc "Linux "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static b(Landroid/content/Context;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L4 to L5 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L6 to L7 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L8 to L9 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.eg.android.AlipayGphone"
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnonnull L3
iconst_0
ireturn
L3:
aload 0
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 3
aload 0
ldc "\\."
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
ldc "7.0.0"
ldc "\\."
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 3
invokeinterface java/util/List/size()I 0
aload 4
invokeinterface java/util/List/size()I 0
invokestatic java/lang/Math/max(II)I
istore 2
L4:
aload 3
invokeinterface java/util/List/size()I 0
iload 2
if_icmpge L6
aload 3
ldc "0"
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L4
L6:
aload 4
invokeinterface java/util/List/size()I 0
iload 2
if_icmpge L10
aload 4
ldc "0"
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
goto L6
L11:
iload 1
iload 2
if_icmpge L12
L8:
aload 3
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 4
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
if_icmpeq L13
aload 3
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
aload 4
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L9:
iload 2
iload 1
isub
istore 1
L14:
iload 1
ifge L15
iconst_0
ireturn
L13:
iload 1
iconst_1
iadd
istore 1
goto L11
L12:
iconst_0
istore 1
goto L14
L15:
iconst_1
ireturn
L2:
astore 0
iconst_0
ireturn
L10:
iconst_0
istore 1
goto L11
.limit locals 5
.limit stack 3
.end method

.method public static b(Ljava/lang/String;)Z
ldc "^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static c()Ljava/lang/String;
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
iconst_0
istore 0
L0:
iload 0
bipush 24
if_icmpge L1
aload 1
iconst_3
invokevirtual java/util/Random/nextInt(I)I
tableswitch 0
L2
L3
L4
default : L5
L5:
iload 0
iconst_1
iadd
istore 0
goto L0
L2:
aload 2
invokestatic java/lang/Math/random()D
ldc2_w 25.0D
dmul
ldc2_w 65.0D
dadd
invokestatic java/lang/Math/round(D)J
l2i
i2c
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L3:
aload 2
invokestatic java/lang/Math/random()D
ldc2_w 25.0D
dmul
ldc2_w 97.0D
dadd
invokestatic java/lang/Math/round(D)J
l2i
i2c
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L4:
aload 2
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
bipush 10
invokevirtual java/util/Random/nextInt(I)I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L1:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/alipay/sdk/util/i/a()Ljava/lang/String;
astore 1
invokestatic com/alipay/sdk/util/i/b()Ljava/lang/String;
astore 2
aload 0
invokestatic com/alipay/sdk/util/i/d(Landroid/content/Context;)Ljava/lang/String;
astore 3
aload 0
invokestatic com/alipay/sdk/util/i/e(Landroid/content/Context;)Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
ldc " ("
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")(sdk android)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private static d()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch java/io/IOException from L3 to L5 using L2
.catch java/io/IOException from L6 to L2 using L2
.catch java/io/IOException from L7 to L8 using L2
.catch java/io/IOException from L9 to L10 using L2
L0:
new java/io/BufferedReader
dup
new java/io/FileReader
dup
ldc "/proc/version"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
sipush 256
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 0
L1:
aload 0
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 1
L3:
aload 0
invokevirtual java/io/BufferedReader/close()V
ldc "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
aload 0
invokevirtual java/util/regex/Matcher/matches()Z
ifne L7
L5:
ldc "Unavailable"
areturn
L4:
astore 1
L6:
aload 0
invokevirtual java/io/BufferedReader/close()V
aload 1
athrow
L2:
astore 0
ldc "Unavailable"
areturn
L7:
aload 0
invokevirtual java/util/regex/Matcher/groupCount()I
iconst_4
if_icmpge L9
L8:
ldc "Unavailable"
areturn
L9:
new java/lang/StringBuilder
dup
aload 0
iconst_1
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iconst_2
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iconst_3
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iconst_4
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L10:
aload 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/locale Ljava/util/Locale;
invokevirtual java/util/Locale/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static e()Ljava/lang/String;
getstatic com/alipay/sdk/cons/a/a Ljava/lang/String;
astore 0
aload 0
iconst_0
aload 0
ldc "://"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 0
aload 1
getfield android/util/DisplayMetrics/widthPixels I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 1
getfield android/util/DisplayMetrics/heightPixels I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static f()Ljava/lang/String;
ldc "-1;-1"
areturn
.limit locals 0
.limit stack 1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
ldc ""
astore 1
L0:
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
invokevirtual android/app/ActivityManager/getRunningAppProcesses()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 1
astore 0
L7:
aload 0
astore 1
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/app/ActivityManager$RunningAppProcessInfo
astore 1
aload 1
getfield android/app/ActivityManager$RunningAppProcessInfo/processName Ljava/lang/String;
ldc "com.eg.android.AlipayGphone"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#M"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L4:
goto L7
L5:
aload 1
getfield android/app/ActivityManager$RunningAppProcessInfo/processName Ljava/lang/String;
ldc "com.eg.android.AlipayGphone:"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/app/ActivityManager$RunningAppProcessInfo/processName Ljava/lang/String;
ldc "com.eg.android.AlipayGphone:"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L6:
goto L7
L2:
astore 0
ldc ""
astore 1
L8:
aload 1
astore 0
aload 1
invokevirtual java/lang/String/length()I
ifle L10
aload 1
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L10:
aload 0
astore 1
aload 0
invokevirtual java/lang/String/length()I
ifne L11
ldc "N"
astore 1
L11:
aload 1
areturn
L9:
goto L6
.limit locals 3
.limit stack 4
.end method

.method private static g(Landroid/content/Context;)Landroid/util/DisplayMetrics;
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
iconst_0
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
iconst_0
istore 1
L0:
iload 1
aload 0
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/content/pm/PackageInfo
astore 4
aload 4
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
istore 2
iload 2
iconst_1
iand
ifne L2
iload 2
sipush 128
iand
ifne L2
iconst_1
istore 2
L3:
iload 2
ifeq L4
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.eg.android.AlipayGphone"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 3
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield android/content/pm/PackageInfo/versionCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
iconst_0
istore 2
goto L3
L5:
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "theme"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L4
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.google."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L4
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.android."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L4
aload 3
aload 4
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
L1:
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 2
.end method
