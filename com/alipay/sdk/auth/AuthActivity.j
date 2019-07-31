.bytecode 50.0
.class public synchronized com/alipay/sdk/auth/AuthActivity
.super android/app/Activity
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" "DefaultLocale" 
.end annotation
.inner class private final a inner com/alipay/sdk/auth/AuthActivity$a outer com/alipay/sdk/auth/AuthActivity
.inner class private final b inner com/alipay/sdk/auth/AuthActivity$b outer com/alipay/sdk/auth/AuthActivity

.field static final 'a' Ljava/lang/String; = "params"

.field static final 'b' Ljava/lang/String; = "redirectUri"

.field private 'c' Landroid/webkit/WebView;

.field private 'd' Ljava/lang/String;

.field private 'e' Lcom/alipay/sdk/widget/a;

.field private 'f' Landroid/os/Handler;

.field private 'g' Z

.field private 'h' Z

.field private 'i' Ljava/lang/Runnable;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/alipay/sdk/auth/d
dup
aload 0
invokespecial com/alipay/sdk/auth/d/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
putfield com/alipay/sdk/auth/AuthActivity/i Ljava/lang/Runnable;
return
.limit locals 1
.limit stack 4
.end method

.method private a()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
ifnonnull L1
aload 0
new com/alipay/sdk/widget/a
dup
aload 0
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
L1:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
L3:
return
L2:
astore 1
aload 0
aconst_null
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/authjs/a;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ifnull L3
aload 1
ifnonnull L0
L3:
return
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "clientId"
aload 1
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "func"
aload 1
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "param"
aload 1
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "msgType"
aload 1
getfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new com/alipay/sdk/auth/c
dup
aload 0
ldc "AlipayJSBridge._invokeJS(%s)"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial com/alipay/sdk/auth/c/<init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
invokevirtual com/alipay/sdk/auth/AuthActivity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
return
L2:
astore 0
return
.limit locals 3
.limit stack 9
.end method

.method private a(Lcom/alipay/sdk/authjs/a;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ifnull L3
aload 1
ifnonnull L0
L3:
return
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "clientId"
aload 1
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "func"
aload 1
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "param"
aload 1
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "msgType"
aload 1
getfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new com/alipay/sdk/auth/c
dup
aload 0
ldc "AlipayJSBridge._invokeJS(%s)"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial com/alipay/sdk/auth/c/<init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
invokevirtual com/alipay/sdk/auth/AuthActivity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
return
L2:
astore 1
return
.limit locals 3
.limit stack 9
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;)Z
aload 0
iconst_1
putfield com/alipay/sdk/auth/AuthActivity/h Z
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 1
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 1
ldc "https://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
ldc "SDKLite://h5quit"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L2
aload 1
astore 2
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=150"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L3:
aload 0
aload 2
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
L2:
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
aload 0
iload 1
putfield com/alipay/sdk/auth/AuthActivity/g Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private a(Ljava/lang/String;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 1
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 1
ldc "https://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
ldc "SDKLite://h5quit"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L2
aload 1
astore 2
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=150"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L3:
aload 0
aload 2
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
L2:
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method private b()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L0:
aload 0
aconst_null
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/Exception from L6 to L7 using L4
.catch org/json/JSONException from L8 to L9 using L10
new com/alipay/sdk/authjs/d
dup
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/getApplicationContext()Landroid/content/Context;
new com/alipay/sdk/auth/b
dup
aload 0
invokespecial com/alipay/sdk/auth/b/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
invokespecial com/alipay/sdk/authjs/d/<init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
astore 2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "clientId"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L3:
return
L5:
aload 3
ldc "param"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 0
aload 0
instanceof org/json/JSONObject
ifeq L11
aload 0
checkcast org/json/JSONObject
astore 0
L6:
aload 3
ldc "func"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 3
ldc "bundleName"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
new com/alipay/sdk/authjs/a
dup
ldc "call"
invokespecial com/alipay/sdk/authjs/a/<init>(Ljava/lang/String;)V
astore 5
aload 5
aload 3
putfield com/alipay/sdk/authjs/a/j Ljava/lang/String;
aload 5
aload 4
putfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
aload 5
aload 0
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
aload 5
aload 1
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 2
aload 5
invokevirtual com/alipay/sdk/authjs/d/a(Lcom/alipay/sdk/authjs/a;)V
L7:
return
L4:
astore 0
aload 1
astore 0
L12:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
L8:
aload 2
aload 0
getstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
L9:
return
L10:
astore 0
return
L2:
astore 0
aconst_null
astore 0
goto L12
L11:
aconst_null
astore 0
goto L6
L13:
return
.limit locals 6
.limit stack 6
.end method

.method private b(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/Exception from L6 to L7 using L4
.catch org/json/JSONException from L8 to L9 using L10
new com/alipay/sdk/authjs/d
dup
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/getApplicationContext()Landroid/content/Context;
new com/alipay/sdk/auth/b
dup
aload 0
invokespecial com/alipay/sdk/auth/b/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
invokespecial com/alipay/sdk/authjs/d/<init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
astore 3
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "clientId"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L3:
return
L5:
aload 4
ldc "param"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
instanceof org/json/JSONObject
ifeq L11
aload 1
checkcast org/json/JSONObject
astore 1
L6:
aload 4
ldc "func"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 4
ldc "bundleName"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
new com/alipay/sdk/authjs/a
dup
ldc "call"
invokespecial com/alipay/sdk/authjs/a/<init>(Ljava/lang/String;)V
astore 6
aload 6
aload 4
putfield com/alipay/sdk/authjs/a/j Ljava/lang/String;
aload 6
aload 5
putfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
aload 6
aload 1
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
aload 6
aload 2
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 3
aload 6
invokevirtual com/alipay/sdk/authjs/d/a(Lcom/alipay/sdk/authjs/a;)V
L7:
return
L4:
astore 1
aload 2
astore 1
L12:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
L8:
aload 3
aload 1
getstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
L9:
return
L10:
astore 1
return
L2:
astore 1
aconst_null
astore 1
goto L12
L11:
aconst_null
astore 1
goto L6
L13:
return
.limit locals 7
.limit stack 6
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;)Z
aload 0
getfield com/alipay/sdk/auth/AuthActivity/g Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic c(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;
aload 0
getfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic d(Lcom/alipay/sdk/auth/AuthActivity;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
ifnonnull L1
aload 0
new com/alipay/sdk/widget/a
dup
aload 0
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
L1:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
L3:
return
L2:
astore 1
aload 0
aconst_null
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;
aload 0
getfield com/alipay/sdk/auth/AuthActivity/i Ljava/lang/Runnable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;
aload 0
getfield com/alipay/sdk/auth/AuthActivity/f Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic g(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L0:
aload 0
aconst_null
putfield com/alipay/sdk/auth/AuthActivity/e Lcom/alipay/sdk/widget/a;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic h(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/webkit/WebView;
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/alipay/sdk/auth/AuthActivity/h Z
ifeq L1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=150"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
L1:
return
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=150"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
return
.limit locals 1
.limit stack 3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
aload 1
invokespecial android/app/Activity/onConfigurationChanged(Landroid/content/res/Configuration;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L8
.catch java/lang/Throwable from L10 to L11 using L12
.catch java/lang/Throwable from L13 to L14 using L15
.catch java/lang/Throwable from L16 to L17 using L15
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
L0:
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
L1:
aload 1
ifnonnull L3
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
L18:
return
L2:
astore 1
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
return
L3:
aload 0
aload 1
ldc "redirectUri"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/sdk/auth/AuthActivity/d Ljava/lang/String;
aload 1
ldc "params"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L4:
aload 1
invokestatic com/alipay/sdk/util/i/b(Ljava/lang/String;)Z
ifne L19
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
return
L5:
astore 1
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/finish()V
return
L19:
aload 0
iconst_1
invokespecial android/app/Activity/requestWindowFeature(I)Z
pop
aload 0
new android/os/Handler
dup
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
putfield com/alipay/sdk/auth/AuthActivity/f Landroid/os/Handler;
new android/widget/LinearLayout
dup
aload 0
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 2
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 3
aload 2
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 0
aload 2
aload 3
invokevirtual com/alipay/sdk/auth/AuthActivity/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
new android/webkit/WebView
dup
aload 0
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
putfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
aload 3
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setVisibility(I)V
aload 2
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
astore 2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual android/webkit/WebSettings/getUserAgentString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/alipay/sdk/auth/AuthActivity/getApplicationContext()Landroid/content/Context;
invokestatic com/alipay/sdk/util/i/c(Landroid/content/Context;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebSettings/setUserAgentString(Ljava/lang/String;)V
aload 2
getstatic android/webkit/WebSettings$RenderPriority/HIGH Landroid/webkit/WebSettings$RenderPriority;
invokevirtual android/webkit/WebSettings/setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
aload 2
iconst_1
invokevirtual android/webkit/WebSettings/setSupportMultipleWindows(Z)V
aload 2
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 2
iconst_0
invokevirtual android/webkit/WebSettings/setSavePassword(Z)V
aload 2
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptCanOpenWindowsAutomatically(Z)V
aload 2
aload 2
invokevirtual android/webkit/WebSettings/getMinimumFontSize()I
bipush 8
iadd
invokevirtual android/webkit/WebSettings/setMinimumFontSize(I)V
aload 2
iconst_0
invokevirtual android/webkit/WebSettings/setAllowFileAccess(Z)V
aload 2
getstatic android/webkit/WebSettings$TextSize/NORMAL Landroid/webkit/WebSettings$TextSize;
invokevirtual android/webkit/WebSettings/setTextSize(Landroid/webkit/WebSettings$TextSize;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
iconst_1
invokevirtual android/webkit/WebView/setVerticalScrollbarOverlay(Z)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
new com/alipay/sdk/auth/AuthActivity$b
dup
aload 0
iconst_0
invokespecial com/alipay/sdk/auth/AuthActivity$b/<init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
new com/alipay/sdk/auth/AuthActivity$a
dup
aload 0
iconst_0
invokespecial com/alipay/sdk/auth/AuthActivity$a/<init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
new com/alipay/sdk/auth/a
dup
aload 0
invokespecial com/alipay/sdk/auth/a/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
invokevirtual android/webkit/WebView/setDownloadListener(Landroid/webkit/DownloadListener;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 7
if_icmplt L10
L6:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
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
astore 1
L7:
aload 1
ifnull L10
L9:
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
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
L10:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ldc "searchBoxJavaBridge_"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ldc "accessibility"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ldc "accessibilityTraversal"
invokevirtual android/webkit/WebView/removeJavascriptInterface(Ljava/lang/String;)V
L11:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L18
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setCacheMode(I)V
return
L12:
astore 1
L13:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "removeJavascriptInterface"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
L14:
aload 1
ifnull L11
L16:
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "searchBoxJavaBridge_"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "accessibility"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "accessibilityTraversal"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L17:
goto L11
L15:
astore 1
goto L11
L8:
astore 1
goto L10
.limit locals 4
.limit stack 6
.end method

.method protected onDestroy()V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
ifnull L3
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/removeAllViews()V
L0:
aload 0
getfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/destroy()V
L1:
aload 0
aconst_null
putfield com/alipay/sdk/auth/AuthActivity/c Landroid/webkit/WebView;
L3:
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method
