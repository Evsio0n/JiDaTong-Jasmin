.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/constant/SchoolLifeHttpConfig
.super java/lang/Object

.field public static final 'SERVER_DOMAIN' Ljava/lang/String;

.field public static final 'SQUARE_DOMAIN' Ljava/lang/String;

.field public static final 'URL_UPLOAD_AVATAR_TMP' Ljava/lang/String;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/life/api/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SQUARE_DOMAIN Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/request/avatars"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/URL_UPLOAD_AVATAR_TMP Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
