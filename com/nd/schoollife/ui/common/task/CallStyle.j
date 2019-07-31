.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/task/CallStyle
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/task/CallStyle;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/task/CallStyle;

.field public static final enum 'CALL_STYLE_INIT' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field public static final enum 'CALL_STYLE_LOADMORE' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field public static final enum 'CALL_STYLE_NONE' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field public static final enum 'CALL_STYLE_REFLASH' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field public static final enum 'CALL_STYLE_SUBMIT' Lcom/nd/schoollife/ui/common/task/CallStyle;

.method static <clinit>()V
new com/nd/schoollife/ui/common/task/CallStyle
dup
ldc "CALL_STYLE_REFLASH"
iconst_0
invokespecial com/nd/schoollife/ui/common/task/CallStyle/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
new com/nd/schoollife/ui/common/task/CallStyle
dup
ldc "CALL_STYLE_LOADMORE"
iconst_1
invokespecial com/nd/schoollife/ui/common/task/CallStyle/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
new com/nd/schoollife/ui/common/task/CallStyle
dup
ldc "CALL_STYLE_SUBMIT"
iconst_2
invokespecial com/nd/schoollife/ui/common/task/CallStyle/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
new com/nd/schoollife/ui/common/task/CallStyle
dup
ldc "CALL_STYLE_INIT"
iconst_3
invokespecial com/nd/schoollife/ui/common/task/CallStyle/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
new com/nd/schoollife/ui/common/task/CallStyle
dup
ldc "CALL_STYLE_NONE"
iconst_4
invokespecial com/nd/schoollife/ui/common/task/CallStyle/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_NONE Lcom/nd/schoollife/ui/common/task/CallStyle;
iconst_5
anewarray com/nd/schoollife/ui/common/task/CallStyle
dup
iconst_0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
aastore
dup
iconst_2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aastore
dup
iconst_3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aastore
dup
iconst_4
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_NONE Lcom/nd/schoollife/ui/common/task/CallStyle;
aastore
putstatic com/nd/schoollife/ui/common/task/CallStyle/$VALUES [Lcom/nd/schoollife/ui/common/task/CallStyle;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/task/CallStyle;
ldc com/nd/schoollife/ui/common/task/CallStyle
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/task/CallStyle
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/task/CallStyle;
getstatic com/nd/schoollife/ui/common/task/CallStyle/$VALUES [Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual [Lcom/nd/schoollife/ui/common/task/CallStyle;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/task/CallStyle;
areturn
.limit locals 0
.limit stack 1
.end method
