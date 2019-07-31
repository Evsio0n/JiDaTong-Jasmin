.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/TaskGlobalVariable
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "TaskGlobalVariable"

.field private static 'instance' Lcom/nd/android/u/tast/TaskGlobalVariable;

.field private 'customerUid' J

.field private 'isLottery' Z

.field public 'mOapScore' Lcom/product/android/commonInterface/task/OapScore;

.method static <clinit>()V
new com/nd/android/u/tast/TaskGlobalVariable
dup
invokespecial com/nd/android/u/tast/TaskGlobalVariable/<init>()V
putstatic com/nd/android/u/tast/TaskGlobalVariable/instance Lcom/nd/android/u/tast/TaskGlobalVariable;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/product/android/commonInterface/task/OapScore
dup
invokespecial com/product/android/commonInterface/task/OapScore/<init>()V
putfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getstatic com/nd/android/u/tast/TaskGlobalVariable/instance Lcom/nd/android/u/tast/TaskGlobalVariable;
ifnonnull L0
new com/nd/android/u/tast/TaskGlobalVariable
dup
invokespecial com/nd/android/u/tast/TaskGlobalVariable/<init>()V
putstatic com/nd/android/u/tast/TaskGlobalVariable/instance Lcom/nd/android/u/tast/TaskGlobalVariable;
L0:
getstatic com/nd/android/u/tast/TaskGlobalVariable/instance Lcom/nd/android/u/tast/TaskGlobalVariable;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getCustomerUid()J
aload 0
getfield com/nd/android/u/tast/TaskGlobalVariable/customerUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public isLottery()Z
aload 0
getfield com/nd/android/u/tast/TaskGlobalVariable/isLottery Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCustomerUid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/TaskGlobalVariable/customerUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setLottery(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/TaskGlobalVariable/isLottery Z
return
.limit locals 2
.limit stack 2
.end method
