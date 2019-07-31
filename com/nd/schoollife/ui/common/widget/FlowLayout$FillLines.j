.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;>;"
.inner class public static final enum FillLines inner com/nd/schoollife/ui/common/widget/FlowLayout$FillLines outer com/nd/schoollife/ui/common/widget/FlowLayout

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;

.field public static final enum 'ALL' Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;

.field public static final enum 'EXCEPT_LAST' Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;

.field public static final enum 'NONE' Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;

.field private final 'mIntValue' I

.method static <clinit>()V
new com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
dup
ldc "NONE"
iconst_0
iconst_0
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
new com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
dup
ldc "EXCEPT_LAST"
iconst_1
iconst_1
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/EXCEPT_LAST Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
new com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
dup
ldc "ALL"
iconst_2
iconst_2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/<init>(Ljava/lang/String;II)V
putstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/ALL Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
iconst_3
anewarray com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
dup
iconst_0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/EXCEPT_LAST Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aastore
dup
iconst_2
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/ALL Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
aastore
putstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/$VALUES [Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
.signature "(I)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/mIntValue I
return
.limit locals 4
.limit stack 3
.end method

.method public static from(I)Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
iload 0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/EXCEPT_LAST Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/getIntValue()I
if_icmpne L0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/EXCEPT_LAST Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
areturn
L0:
iload 0
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/ALL Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
invokevirtual com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/getIntValue()I
if_icmpne L1
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/ALL Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
areturn
L1:
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/NONE Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
ldc com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/widget/FlowLayout$FillLines
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
getstatic com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/$VALUES [Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
invokevirtual [Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/widget/FlowLayout$FillLines;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getIntValue()I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout$FillLines/mIntValue I
ireturn
.limit locals 1
.limit stack 1
.end method
