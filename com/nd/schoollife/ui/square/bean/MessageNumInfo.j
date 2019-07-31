.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/square/bean/MessageNumInfo
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;

.field public static final enum 'INSTANCE' Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;

.field private 'mAtMessageNum' J

.field private 'mFirstShowView' Ljava/lang/String;

.field private 'mLikeMessageNum' I

.field private 'mListener' Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;

.field private 'mReplyMessageNum' I

.method static <clinit>()V
new com/nd/schoollife/ui/square/bean/MessageNumInfo
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/schoollife/ui/square/bean/MessageNumInfo/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iconst_1
anewarray com/nd/schoollife/ui/square/bean/MessageNumInfo
dup
iconst_0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
aastore
putstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/$VALUES [Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
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
aload 0
lconst_0
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
aload 0
ldc "notype"
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
ldc com/nd/schoollife/ui/square/bean/MessageNumInfo
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/square/bean/MessageNumInfo
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/$VALUES [Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual [Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getAllMessageNum()J
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
i2l
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
ladd
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
i2l
ladd
lreturn
.limit locals 1
.limit stack 4
.end method

.method public getAtMessageNum()J
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFirstShowView()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
ifnonnull L0
ldc "notype"
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
ldc "notype"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc "notype"
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
ldc "reply"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
ifle L2
ldc "reply"
areturn
L2:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
ldc "mention"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
lconst_0
lcmp
ifle L3
ldc "mention"
areturn
L3:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
ldc "praise"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
ifle L4
ldc "praise"
areturn
L4:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
ifle L5
ldc "praise"
areturn
L5:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
ifle L6
ldc "reply"
areturn
L6:
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
lconst_0
lcmp
ifle L7
ldc "mention"
areturn
L7:
ldc "notype"
areturn
.limit locals 1
.limit stack 4
.end method

.method public getLikeMessageNum()I
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReplyMessageNum()I
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public notifyNumChange()V
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
i2l
ladd
aload 0
getfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
i2l
ladd
invokeinterface com/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener/refreshMsgNum(J)V 2
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public setAtMessageNum(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mAtMessageNum J
return
.limit locals 3
.limit stack 3
.end method

.method public setFirstShowView(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mFirstShowView Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLikeMessageNum(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mLikeMessageNum I
return
.limit locals 2
.limit stack 2
.end method

.method public setReplyMessageNum(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mReplyMessageNum I
return
.limit locals 2
.limit stack 2
.end method

.method public setSerachBarListener(Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/bean/MessageNumInfo/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
return
.limit locals 2
.limit stack 2
.end method
