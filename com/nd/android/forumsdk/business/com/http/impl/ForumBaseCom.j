.bytecode 50.0
.class synchronized abstract com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom
.super java/lang/Object
.inner class static synthetic inner com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$1
.inner class public static final enum RequestType inner com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType outer com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom

.field public static final 'TAG' Ljava/lang/String;

.field private 'mOapHtppApi' Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;

.method static <clinit>()V
ldc com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private appendList(Ljava/lang/Class;Ljava/util/ArrayList;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.signature "<T:Lcom/nd/android/forumsdk/business/bean/ForumResultBase;>(Ljava/lang/Class<TT;>;Ljava/util/ArrayList<Ljava/lang/Object;>;)TT;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L0 to L1 using L4
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L5
aload 0
aload 1
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 3
L0:
aload 1
ldc "setList"
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 3
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
aload 3
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/NoSuchMethodException/printStackTrace()V
aload 3
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
aload 3
areturn
L4:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
aload 3
areturn
L5:
astore 1
aload 1
invokevirtual java/lang/reflect/InvocationTargetException/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method private getDefaultInstance(Ljava/lang/Class;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.signature "<T:Lcom/nd/android/forumsdk/business/bean/ForumResultBase;>(Ljava/lang/Class<TT;>;)TT;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/InstantiationException from L0 to L1 using L3
.catch java/lang/IllegalAccessException from L0 to L1 using L4
.catch java/lang/IllegalArgumentException from L0 to L1 using L5
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L6
L0:
aload 1
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/NoSuchMethodException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/InstantiationException/printStackTrace()V
aconst_null
areturn
L4:
astore 1
aload 1
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
aconst_null
areturn
L5:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
aconst_null
areturn
L6:
astore 1
aload 1
invokevirtual java/lang/reflect/InvocationTargetException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static judgeNetWorkStatus()Z
iconst_0
istore 0
invokestatic com/nd/android/forumsdk/business/constant/ForumConfig/getContext()Landroid/content/Context;
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/net/NetworkInfo/isAvailable()Z
istore 0
L0:
iload 0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private resolveBusinessError(Ljava/lang/Class;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.signature "<T:Lcom/nd/android/forumsdk/business/bean/ForumResultBase;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 3
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "resolveBusinessError::responseStr="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 1
L0:
aload 1
aload 2
ldc com/nd/android/forumsdk/business/bean/ForumErrorBean
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/ForumErrorBean
astore 1
L1:
aload 3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setErrorBean(Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;)V
aload 3
areturn
L2:
astore 1
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.signature "<T:Lcom/nd/android/forumsdk/business/bean/ForumResultBase;>(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class<TT;>;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)TT;"
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L0 to L1 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L3 to L4 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L5 to L6 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L9 to L10 using L2
.catch java/lang/Exception from L12 to L13 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L14 to L15 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L16 to L17 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L18 to L19 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L20 to L21 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L22 to L23 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L24 to L25 using L2
.catch java/lang/Exception from L26 to L27 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L26 to L27 using L2
.catch java/lang/Exception from L28 to L29 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L28 to L29 using L2
.catch java/lang/Exception from L30 to L31 using L11
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L30 to L31 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L32 to L33 using L2
.catch com/nd/android/forumsdk/business/com/httptool/HttpException from L34 to L35 using L2
aconst_null
astore 14
aconst_null
astore 12
aconst_null
astore 11
aconst_null
astore 13
ldc ""
astore 10
invokestatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/judgeNetWorkStatus()Z
ifne L36
aload 0
aload 3
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 1
aload 1
bipush -100
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 1
ldc "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e~"
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
aload 1
areturn
L36:
aload 0
new com/nd/android/forumsdk/business/com/httptool/HttpComExt
dup
invokespecial com/nd/android/forumsdk/business/com/httptool/HttpComExt/<init>()V
putfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 14
astore 8
aload 11
astore 9
L0:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$1/$SwitchMap$com$nd$android$forumsdk$business$com$http$impl$ForumBaseCom$RequestType [I
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/ordinal()I
iaload
tableswitch 1
L37
L38
L39
L40
L41
L1
L1
default : L42
L1:
aload 11
astore 9
L3:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "processPostOrGet:url = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 11
astore 9
L5:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "processPostOrGet:result = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aload 11
astore 9
L7:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 7
L8:
iload 7
ifne L43
aload 12
astore 1
aload 11
astore 9
L9:
new org/json/JSONObject
dup
aload 8
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L44
L10:
bipush -3
istore 6
aload 12
astore 1
aload 11
astore 9
L12:
aload 0
aload 3
aload 8
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/resolveBusinessError(Ljava/lang/Class;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 4
L13:
ldc "\u7f51\u7edc\u8bf7\u6c42\u4e1a\u52a1\u51fa\u9519~"
astore 2
aload 4
astore 1
aload 4
astore 9
L14:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "server json result is business error\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
aload 4
astore 1
L45:
aload 1
astore 4
aload 1
ifnonnull L46
aload 0
aload 3
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 4
L46:
aload 4
iload 6
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 4
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "processPostOrGet:httpCode = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
L37:
aload 11
astore 9
L16:
aload 0
getfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 2
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
astore 8
L17:
goto L1
L38:
aload 11
astore 9
L18:
aload 0
getfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/get(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
astore 8
L19:
goto L1
L39:
aload 11
astore 9
L20:
aload 0
getfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 2
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
astore 8
L21:
goto L1
L40:
aload 11
astore 9
L22:
aload 0
getfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 2
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/delete(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
astore 8
L23:
goto L1
L41:
aload 11
astore 9
L24:
aload 0
getfield com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/mOapHtppApi Lcom/nd/android/forumsdk/business/com/httptool/HttpComExt;
aload 2
aload 5
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpComExt/patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/com/httptool/Response;
invokevirtual com/nd/android/forumsdk/business/com/httptool/Response/asString()Ljava/lang/String;
astore 8
L25:
goto L1
L44:
aload 12
astore 1
aload 11
astore 9
L26:
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 2
L27:
aload 4
ifnull L47
aload 12
astore 1
aload 11
astore 9
L28:
aload 0
aload 3
aload 2
aload 8
aload 4
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/ArrayList
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/appendList(Ljava/lang/Class;Ljava/util/ArrayList;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
astore 2
L29:
aload 2
astore 1
goto L48
L47:
aload 12
astore 1
aload 11
astore 9
L30:
aload 2
aload 8
aload 3
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 2
L31:
aload 2
astore 1
goto L48
L11:
astore 4
bipush -2
istore 6
ldc "\u7f51\u7edc\u8bf7\u6c42\u89e3\u6790\u51fa\u9519~"
astore 2
aload 1
astore 9
L32:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Gson parse exception:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L33:
goto L45
L2:
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/com/httptool/HttpException/getStatusCode()I
istore 6
ldc "\u7f51\u7edc\u8bf7\u6c42\u51fa\u9519~"
astore 2
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "HttpException:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 9
astore 1
goto L45
L43:
iconst_m1
istore 6
ldc "\u7f51\u7edc\u8bf7\u6c42\u8fd4\u56de\u5185\u5bb9\u4e3a\u7a7a~"
astore 2
aload 11
astore 9
L34:
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/TAG Ljava/lang/String;
ldc "server json result is null"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L35:
aload 13
astore 1
goto L45
L42:
aload 14
astore 8
goto L1
L48:
sipush 200
istore 6
aload 10
astore 2
goto L45
.limit locals 15
.limit stack 5
.end method

.method public processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.signature "<T:Lcom/nd/android/forumsdk/business/bean/ForumResultBase;>(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class<TT;>;Lorg/json/JSONObject;)TT;"
aload 0
aload 1
aload 2
aload 3
aconst_null
aload 4
invokevirtual com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
.limit locals 5
.limit stack 6
.end method
