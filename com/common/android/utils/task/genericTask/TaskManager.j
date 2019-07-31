.bytecode 50.0
.class public synchronized com/common/android/utils/task/genericTask/TaskManager
.super java/util/Observable

.field public static final 'CANCEL_ALL' Ljava/lang/Integer;

.field private static final 'TAG' Ljava/lang/String; = "TaskManager"

.method static <clinit>()V
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putstatic com/common/android/utils/task/genericTask/TaskManager/CANCEL_ALL Ljava/lang/Integer;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/util/Observable/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addTask(Ljava/util/Observer;)V
aload 0
aload 1
invokespecial java/util/Observable/addObserver(Ljava/util/Observer;)V
return
.limit locals 2
.limit stack 2
.end method

.method public cancelAll()V
ldc "TaskManager"
ldc "All task Cancelled."
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/common/android/utils/task/genericTask/TaskManager/setChanged()V
aload 0
getstatic com/common/android/utils/task/genericTask/TaskManager/CANCEL_ALL Ljava/lang/Integer;
invokevirtual com/common/android/utils/task/genericTask/TaskManager/notifyObservers(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method
