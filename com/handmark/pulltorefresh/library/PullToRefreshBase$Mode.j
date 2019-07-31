.bytecode 50.0
.class public final synchronized enum com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;>;"
.inner class public static final enum Mode inner com/handmark/pulltorefresh/library/PullToRefreshBase$Mode outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field public static final enum 'BOTH' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum 'DISABLED' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private static final synthetic 'ENUM$VALUES' [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum 'MANUAL_REFRESH_ONLY' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static 'PULL_DOWN_TO_REFRESH' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum 'PULL_FROM_END' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum 'PULL_FROM_START' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static 'PULL_UP_TO_REFRESH' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private 'mIntValue' I

.method static <clinit>()V
new com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
ldc "DISABLED"
iconst_0
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
ldc "PULL_FROM_START"
iconst_1
iconst_1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
ldc "PULL_FROM_END"
iconst_2
iconst_2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
ldc "BOTH"
iconst_3
iconst_3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
ldc "MANUAL_REFRESH_ONLY"
iconst_4
iconst_4
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iconst_5
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
dup
iconst_0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aastore
dup
iconst_1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aastore
dup
iconst_2
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aastore
dup
iconst_3
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aastore
dup
iconst_4
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aastore
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_DOWN_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_UP_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/mIntValue I
return
.limit locals 4
.limit stack 3
.end method

.method static getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
areturn
.limit locals 0
.limit stack 1
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 3
L2:
aload 3
areturn
L1:
aload 5
iload 1
aaload
astore 4
aload 4
astore 3
iload 0
aload 4
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/getIntValue()I
if_icmpeq L2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 6
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
ldc com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$Mode
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method getIntValue()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/mIntValue I
ireturn
.limit locals 1
.limit stack 1
.end method

.method permitsPullToRefresh()Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public showFooterLoadingLayout()Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public showHeaderLoadingLayout()Z
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method
