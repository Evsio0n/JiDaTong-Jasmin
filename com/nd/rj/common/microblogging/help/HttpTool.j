.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/help/HttpTool
.super com/common/android/utils/httpRequest/HttpRequest

.field public static final 'CONNECT_ERROR' I = -5


.field public static final 'CONNECT_FAILURE' I = 1


.field public static final 'CONNECT_SUCCESS' I = 0


.field private static final 'COOKIE' Ljava/lang/String; = "Cookie"

.field public static final 'LENGTH_ERROR' I = -6


.field public static final 'SOCKET_ERROR' I = -2


.field public static final 'TIMEOUT_ERROR' I = -3


.field public static final 'UNKONWN_ERROR' I = -1


.field public static final 'UNKONWN_HOST_ERROR' I = -4


.field private static 'httpTool' Lcom/nd/rj/common/microblogging/help/HttpTool;

.field private 'mSid' Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/microblogging/help/HttpTool/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
aload 0
ldc "HttpTool"
putfield com/nd/rj/common/microblogging/help/HttpTool/TAG Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/help/HttpTool;
getstatic com/nd/rj/common/microblogging/help/HttpTool/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ifnonnull L0
new com/nd/rj/common/microblogging/help/HttpTool
dup
aload 0
invokespecial com/nd/rj/common/microblogging/help/HttpTool/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/microblogging/help/HttpTool/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
L0:
getstatic com/nd/rj/common/microblogging/help/HttpTool/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
areturn
.limit locals 1
.limit stack 3
.end method

.method private convertRetCode(I)I
iload 1
getstatic com/nd/rj/common/R$string/nd_http_error I
if_icmpne L0
iconst_m1
istore 2
L1:
iload 2
ireturn
L0:
iload 1
getstatic com/nd/rj/common/R$string/nd_socket_timeout_error I
if_icmpeq L2
iload 1
getstatic com/nd/rj/common/R$string/nd_connect_timeout_error I
if_icmpne L3
L2:
bipush -3
ireturn
L3:
iload 1
getstatic com/nd/rj/common/R$string/nd_socket_error I
if_icmpne L4
bipush -2
ireturn
L4:
iload 1
istore 2
iload 1
getstatic com/nd/rj/common/R$string/nd_unknown_host_error I
if_icmpne L1
bipush -4
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 3
aconst_null
astore 0
aconst_null
astore 2
aload 3
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 3
invokevirtual android/net/ConnectivityManager/getAllNetworkInfo()[Landroid/net/NetworkInfo;
astore 3
aload 3
ifnull L1
iconst_0
istore 1
L2:
aload 0
astore 2
iload 1
aload 3
arraylength
if_icmpge L1
aload 3
iload 1
aaload
invokevirtual android/net/NetworkInfo/getState()Landroid/net/NetworkInfo$State;
getstatic android/net/NetworkInfo$State/CONNECTED Landroid/net/NetworkInfo$State;
if_acmpne L3
aload 3
iload 1
aaload
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
astore 0
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 4
.limit stack 2
.end method

.method public DoGet(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)I
aload 0
aload 3
putfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc ""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 0
aload 0
aload 1
aload 3
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
invokespecial com/nd/rj/common/microblogging/help/HttpTool/convertRetCode(I)I
istore 4
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
aload 2
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 4
ireturn
.limit locals 5
.limit stack 4
.end method

.method public DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
aload 0
aload 4
putfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc ""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
aload 2
ifnonnull L0
aload 0
aload 1
ldc ""
aload 4
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 5
L1:
aload 0
iload 5
invokespecial com/nd/rj/common/microblogging/help/HttpTool/convertRetCode(I)I
istore 5
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
aload 3
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
ireturn
L0:
aload 0
aload 1
aload 2
aload 4
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 5
goto L1
.limit locals 6
.limit stack 4
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
getfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
ldc "Cookie"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/help/HttpTool/mSid Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method
