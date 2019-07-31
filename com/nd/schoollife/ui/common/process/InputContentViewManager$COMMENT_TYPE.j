.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;>;"
.inner class public static final enum COMMENT_TYPE inner com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE outer com/nd/schoollife/ui/common/process/InputContentViewManager

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.field public static final enum 'COMMENT' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.field public static final enum 'NEWS_COMMENT' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.field public static final enum 'REPLY' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.method static <clinit>()V
new com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
dup
ldc "COMMENT"
iconst_0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
new com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
dup
ldc "REPLY"
iconst_1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
new com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
dup
ldc "NEWS_COMMENT"
iconst_2
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/NEWS_COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
iconst_3
anewarray com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
dup
iconst_0
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aastore
dup
iconst_2
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/NEWS_COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aastore
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/$VALUES [Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
ldc com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/$VALUES [Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual [Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
