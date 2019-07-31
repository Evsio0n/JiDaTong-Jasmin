.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;>;"
.inner class public static final enum TAG_TYPE inner com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE outer com/nd/schoollife/common/bean/structure/TagPosition

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;

.field public static final enum 'AT' Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;

.field public static final enum 'SMILEY' Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;

.field public static final enum 'URL' Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;

.method static <clinit>()V
new com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
dup
ldc "AT"
iconst_0
invokespecial com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/AT Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
new com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
dup
ldc "SMILEY"
iconst_1
invokespecial com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/SMILEY Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
new com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
dup
ldc "URL"
iconst_2
invokespecial com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/URL Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
iconst_3
anewarray com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
dup
iconst_0
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/AT Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
aastore
dup
iconst_1
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/SMILEY Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
aastore
dup
iconst_2
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/URL Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
aastore
putstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/$VALUES [Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
ldc com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/$VALUES [Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual [Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
