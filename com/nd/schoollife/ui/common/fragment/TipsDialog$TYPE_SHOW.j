.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;>;"
.inner class public static final enum TYPE_SHOW inner com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW outer com/nd/schoollife/ui/common/fragment/TipsDialog

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;

.field public static final enum 'BTN_NO' Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;

.field public static final enum 'BTN_ONE' Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;

.field public static final enum 'BTN_TWO' Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;

.method static <clinit>()V
new com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
dup
ldc "BTN_NO"
iconst_0
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
new com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
dup
ldc "BTN_ONE"
iconst_1
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_ONE Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
new com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
dup
ldc "BTN_TWO"
iconst_2
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_TWO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
iconst_3
anewarray com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
dup
iconst_0
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_ONE Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
aastore
dup
iconst_2
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_TWO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
aastore
putstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/$VALUES [Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
ldc com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/$VALUES [Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual [Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
areturn
.limit locals 0
.limit stack 1
.end method
