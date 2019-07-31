.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;>;"
.inner class public static final enum RequestType inner com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType outer com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'DELETE' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'GET' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'HEAD' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'OPTIONS' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'PATCH' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'POST' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.field public static final enum 'PUT' Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;

.method static <clinit>()V
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "GET"
iconst_0
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "HEAD"
iconst_1
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/HEAD Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "PUT"
iconst_2
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PUT Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "DELETE"
iconst_3
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/DELETE Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "POST"
iconst_4
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "OPTIONS"
iconst_5
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/OPTIONS Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
new com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
ldc "PATCH"
bipush 6
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PATCH Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
bipush 7
anewarray com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
dup
iconst_0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
iconst_1
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/HEAD Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
iconst_2
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PUT Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
iconst_3
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/DELETE Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
iconst_4
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
iconst_5
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/OPTIONS Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
dup
bipush 6
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PATCH Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aastore
putstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/$VALUES [Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
ldc com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/$VALUES [Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
invokevirtual [Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
areturn
.limit locals 0
.limit stack 1
.end method
