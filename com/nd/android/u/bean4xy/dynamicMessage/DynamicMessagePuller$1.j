.bytecode 50.0
.class synchronized com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1
.super java/util/TimerTask
.enclosing method com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/start(Landroid/content/Context;J)V
.inner class inner com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1

.field final synthetic 'this$0' Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$uid' J

.field final synthetic 'val$url' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;Ljava/lang/String;Landroid/content/Context;J)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/this$0 Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
aload 0
aload 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$url Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$context Landroid/content/Context;
aload 0
lload 4
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$uid J
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 6
.limit stack 3
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
L0:
ldc "@@"
ldc "@@ start to pull dyn msg.."
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new com/nd/android/u/allCommonHttp/HttpComExt
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokespecial com/nd/android/u/allCommonHttp/HttpComExt/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$url Ljava/lang/String;
invokevirtual com/nd/android/u/allCommonHttp/HttpComExt/get(Ljava/lang/String;)Lcom/nd/android/u/allCommonHttp/Response;
invokevirtual com/nd/android/u/allCommonHttp/Response/asString()Ljava/lang/String;
astore 2
ldc "@@"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "@@ response str: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 2
ifnull L16
L3:
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
return
L5:
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc "["
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L11
new org/json/JSONArray
dup
aload 2
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 2
L6:
iconst_0
istore 1
L7:
iload 1
aload 2
invokevirtual org/json/JSONArray/length()I
if_icmpge L16
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/this$0 Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$context Landroid/content/Context;
aload 2
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$uid J
invokestatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/access$000(Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;Landroid/content/Context;Lorg/json/JSONObject;J)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
astore 3
L8:
aload 3
ifnull L17
L9:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 3
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
L10:
goto L17
L11:
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc "{"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L15
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/this$0 Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$context Landroid/content/Context;
aload 2
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/val$uid J
invokestatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/access$000(Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;Landroid/content/Context;Lorg/json/JSONObject;J)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
astore 2
L12:
aload 2
ifnull L16
L13:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 2
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
L14:
return
L2:
astore 2
ldc "@@"
ldc "@@ error in pull msg timer@@@"
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
L15:
ldc "@@"
ldc "@@ \u670d\u52a1\u5668\u8fd4\u56de\u7684JSON\u5b57\u7b26\u4e32\u4e0d\u89c4\u8303, \u5ffd\u7565\u89e3\u6790"
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L16:
return
L17:
iload 1
iconst_1
iadd
istore 1
goto L7
.limit locals 4
.limit stack 5
.end method
