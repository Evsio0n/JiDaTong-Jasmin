.bytecode 50.0
.class final synchronized enum com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;>;"
.inner class private static final enum State inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$State outer com/huewu/pla/lib/MultiColumnPullToRefreshListView

.field private static final synthetic 'ENUM$VALUES' [Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.field public static final enum 'PULL_TO_REFRESH' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.field public static final enum 'REFRESHING' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.field public static final enum 'RELEASE_TO_REFRESH' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.method static <clinit>()V
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
dup
ldc "PULL_TO_REFRESH"
iconst_0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/<init>(Ljava/lang/String;I)V
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
dup
ldc "RELEASE_TO_REFRESH"
iconst_1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/<init>(Ljava/lang/String;I)V
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
dup
ldc "REFRESHING"
iconst_2
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/<init>(Ljava/lang/String;I)V
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
iconst_3
anewarray com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
dup
iconst_0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aastore
dup
iconst_1
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aastore
dup
iconst_2
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aastore
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ENUM$VALUES [Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
ldc com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ENUM$VALUES [Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/huewu/pla/lib/MultiColumnPullToRefreshListView$State
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
