.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/constant/ResultConst
.super java/lang/Object
.inner class public static CommentServer inner com/nd/schoollife/common/constant/ResultConst$CommentServer outer com/nd/schoollife/common/constant/ResultConst
.inner class public static ImageServer inner com/nd/schoollife/common/constant/ResultConst$ImageServer outer com/nd/schoollife/common/constant/ResultConst

.field public static final 'CLIENT_SERVER_DB_ERROR_998' I = 998


.field public static final 'CLIENT_SERVER_ERROR_999' I = 999


.field public static final 'HTTP_CODE_CONFLICT' I = 409


.field public static final 'HTTP_CODE_GSON_PARSE_ERROR' I = -2


.field public static final 'HTTP_CODE_INTERNAL_SERVER_ERROR' I = 500


.field public static final 'HTTP_CODE_IPNUT_DATA_ERROR' I = 400


.field public static final 'HTTP_CODE_SUCCESS' I = 200


.field public static 'resultCodeMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/schoollife/common/constant/ResultConst/resultCodeMap Ljava/util/Map;
getstatic com/nd/schoollife/common/constant/ResultConst/resultCodeMap Ljava/util/Map;
sipush 999
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 0
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
