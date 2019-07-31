.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;>;"
.inner class public static final enum ActionMode inner com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode outer com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.field public static final enum 'BOTH' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.field public static final enum 'DISABLED' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.field public static final enum 'ONLY_PULLDOWNTOREFRESH' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.field public static final enum 'ONLY_PULLUPTOLOADMORE' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;

.method static <clinit>()V
new com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
dup
ldc "ONLY_PULLDOWNTOREFRESH"
iconst_0
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
new com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
dup
ldc "ONLY_PULLUPTOLOADMORE"
iconst_1
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
new com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
dup
ldc "BOTH"
iconst_2
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
new com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
dup
ldc "DISABLED"
iconst_3
invokespecial com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
iconst_4
anewarray com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
dup
iconst_0
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLDOWNTOREFRESH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aastore
dup
iconst_1
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/ONLY_PULLUPTOLOADMORE Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aastore
dup
iconst_2
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aastore
dup
iconst_3
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/DISABLED Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
aastore
putstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/$VALUES [Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
ldc com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/$VALUES [Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual [Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
areturn
.limit locals 0
.limit stack 1
.end method
