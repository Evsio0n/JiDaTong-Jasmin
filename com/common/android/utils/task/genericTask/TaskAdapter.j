.bytecode 50.0
.class public synchronized abstract com/common/android/utils/task/genericTask/TaskAdapter
.super java/lang/Object
.implements com/common/android/utils/task/genericTask/TaskListener

.field public 'msg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/task/genericTask/TaskAdapter/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 0
.end method
