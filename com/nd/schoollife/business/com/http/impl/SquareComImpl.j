.bytecode 50.0
.class public synchronized com/nd/schoollife/business/com/http/impl/SquareComImpl
.super com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom
.implements com/nd/schoollife/business/com/http/ISquareCom

.field public static final 'TAG' Ljava/lang/String;

.field private static final 'URL_SQUARE_ALL_DATA' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/business/com/http/impl/SquareComImpl
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/SquareComImpl/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SQUARE_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "square/index"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/SquareComImpl/URL_SQUARE_ALL_DATA Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getErrorBeanClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<+Ljava/lang/Object;>;"
ldc com/nd/schoollife/common/bean/SquareErrorBean
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
getstatic com/nd/schoollife/business/com/http/impl/SquareComImpl/URL_SQUARE_ALL_DATA Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultSquareAllData
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/SquareComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultSquareAllData
areturn
.limit locals 1
.limit stack 5
.end method
