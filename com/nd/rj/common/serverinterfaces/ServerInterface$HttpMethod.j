.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;>;"
.inner class public static final enum HttpMethod inner com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod outer com/nd/rj/common/serverinterfaces/ServerInterface

.field private static final synthetic '$VALUES' [Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;

.field public static final enum 'GET' Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;

.field public static final enum 'POST' Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;

.method static <clinit>()V
new com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
dup
ldc "GET"
iconst_0
invokespecial com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/GET Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
new com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
dup
ldc "POST"
iconst_1
invokespecial com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
iconst_2
anewarray com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
dup
iconst_0
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/GET Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
aastore
dup
iconst_1
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
aastore
putstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/$VALUES [Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
ldc com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/$VALUES [Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
invokevirtual [Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
areturn
.limit locals 0
.limit stack 1
.end method
