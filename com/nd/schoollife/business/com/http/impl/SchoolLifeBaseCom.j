.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom
.super java/lang/Object
.inner class static synthetic inner com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$1
.inner class public static final enum RequestType inner com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType outer com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom

.field public static final 'TAG' Ljava/lang/String;

.field private 'mOapHtppApi' Lcom/common/android/utils/http/HttpComExt;

.method static <clinit>()V
ldc com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
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

.method private appendList(Ljava/lang/Class;Ljava/util/ArrayList;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.signature "<T:Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;>(Ljava/lang/Class<TT;>;Ljava/util/ArrayList<Ljava/lang/Object;>;)TT;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L0 to L1 using L4
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L5
aload 0
aload 1
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
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

.method private getDefaultInstance(Ljava/lang/Class;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.signature "<T:Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;>(Ljava/lang/Class<TT;>;)TT;"
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
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
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

.method private resolveBusinessError(Ljava/lang/Class;Lcom/common/android/utils/http/HttpException;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.signature "<T:Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;>(Ljava/lang/Class<TT;>;Lcom/common/android/utils/http/HttpException;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
astore 3
aload 2
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
astore 2
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
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
aload 0
invokevirtual com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/getErrorBeanClass()Ljava/lang/Class;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
astore 1
L1:
aload 3
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setErrorBean(Ljava/lang/Object;)V
aload 3
areturn
L2:
astore 1
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public abstract getErrorBeanClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<+Ljava/lang/Object;>;"
.end method

.method public processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.signature "<T:Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;>(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class<TT;>;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)TT;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch java/lang/Exception from L6 to L7 using L5
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch com/common/android/utils/http/HttpException from L14 to L15 using L2
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
.catch java/lang/Exception from L18 to L19 using L5
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
.catch com/common/android/utils/http/HttpException from L20 to L21 using L2
aconst_null
astore 10
aconst_null
astore 8
aconst_null
astore 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L22
aload 0
aload 3
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
astore 1
aload 1
bipush -100
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_network I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
aload 1
areturn
L22:
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 10
astore 7
L0:
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$1/$SwitchMap$com$nd$schoollife$business$com$http$impl$SchoolLifeBaseCom$RequestType [I
aload 1
invokevirtual com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/ordinal()I
iaload
tableswitch 1
L8
L10
L12
L14
L16
L1
L1
default : L23
L1:
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "processPostOrGet:result = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 1
L4:
aload 4
ifnull L18
L6:
aload 0
aload 3
aload 1
aload 7
aload 4
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/ArrayList
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/appendList(Ljava/lang/Class;Ljava/util/ArrayList;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
astore 1
L7:
sipush 200
istore 6
ldc "\u7f51\u7edc\u8bf7\u6c42\u6210\u529f~"
astore 2
L24:
aload 1
astore 4
aload 1
ifnonnull L25
aload 0
aload 3
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/getDefaultInstance(Ljava/lang/Class;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
astore 4
L25:
aload 4
iload 6
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 4
aload 2
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
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
L8:
aload 0
getfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 7
L9:
goto L1
L10:
aload 0
getfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 7
L11:
goto L1
L12:
aload 0
getfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/put(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 7
L13:
goto L1
L14:
aload 0
getfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/delete(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 7
L15:
goto L1
L16:
aload 0
getfield com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/mOapHtppApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/patch(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 7
L17:
goto L1
L18:
aload 1
aload 7
aload 3
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
astore 1
L19:
goto L7
L5:
astore 1
L20:
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Gson parse exception:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L21:
aload 9
astore 1
goto L7
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
istore 6
ldc "\u7f51\u7edc\u8bf7\u6c42\u4e1a\u52a1\u51fa\u9519~"
astore 2
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/TAG Ljava/lang/String;
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
iload 6
lookupswitch
400 : L26
409 : L26
500 : L26
default : L27
L27:
aload 8
astore 1
goto L24
L26:
aload 0
aload 3
aload 1
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/resolveBusinessError(Ljava/lang/Class;Lcom/common/android/utils/http/HttpException;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
astore 1
goto L24
L23:
aload 10
astore 7
goto L1
.limit locals 11
.limit stack 5
.end method

.method public processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.signature "<T:Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;>(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class<TT;>;Lorg/json/JSONObject;)TT;"
aload 0
aload 1
aload 2
aload 3
aconst_null
aload 4
invokevirtual com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
.limit locals 5
.limit stack 6
.end method
