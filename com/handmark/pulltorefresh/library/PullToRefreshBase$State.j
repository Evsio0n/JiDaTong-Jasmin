.bytecode 50.0
.class public final synchronized enum com/handmark/pulltorefresh/library/PullToRefreshBase$State
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;>;"
.inner class public static final enum State inner com/handmark/pulltorefresh/library/PullToRefreshBase$State outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field private static final synthetic 'ENUM$VALUES' [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'MANUAL_REFRESHING' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'OVERSCROLLING' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'PULL_TO_REFRESH' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'REFRESHING' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'RELEASE_TO_REFRESH' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum 'RESET' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private 'mIntValue' I

.method static <clinit>()V
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "RESET"
iconst_0
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "PULL_TO_REFRESH"
iconst_1
iconst_1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "RELEASE_TO_REFRESH"
iconst_2
iconst_2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RELEASE_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "REFRESHING"
iconst_3
bipush 8
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "MANUAL_REFRESHING"
iconst_4
bipush 9
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
ldc "OVERSCROLLING"
iconst_5
bipush 16
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$State/<init>(Ljava/lang/String;II)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
bipush 6
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$State
dup
iconst_0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
dup
iconst_1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/PULL_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
dup
iconst_2
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RELEASE_TO_REFRESH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
dup
iconst_3
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
dup
iconst_4
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/MANUAL_REFRESHING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
dup
iconst_5
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aastore
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
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
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$State/mIntValue I
return
.limit locals 4
.limit stack 3
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
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
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
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
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$State/getIntValue()I
if_icmpeq L2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 6
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
ldc com/handmark/pulltorefresh/library/PullToRefreshBase$State
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/handmark/pulltorefresh/library/PullToRefreshBase$State
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$State
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
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$State/mIntValue I
ireturn
.limit locals 1
.limit stack 1
.end method
