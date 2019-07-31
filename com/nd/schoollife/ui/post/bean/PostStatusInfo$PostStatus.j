.bytecode 50.0
.class final synchronized enum com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;>;"
.inner class static final enum PostStatus inner com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus outer com/nd/schoollife/ui/post/bean/PostStatusInfo

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;

.field public static final enum 'DELETED' Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;

.field public static final enum 'NORMAL' Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;

.method static <clinit>()V
new com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
dup
ldc "NORMAL"
iconst_0
invokespecial com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/NORMAL Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
new com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
dup
ldc "DELETED"
iconst_1
invokespecial com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/DELETED Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
iconst_2
anewarray com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
dup
iconst_0
getstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/NORMAL Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/DELETED Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
aastore
putstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/$VALUES [Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
ldc com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
getstatic com/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus/$VALUES [Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
invokevirtual [Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/post/bean/PostStatusInfo$PostStatus;
areturn
.limit locals 0
.limit stack 1
.end method
