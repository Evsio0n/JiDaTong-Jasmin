.bytecode 50.0
.class public synchronized abstract com/common/android/utils/task/genericTask/GenericTask
.super android/os/AsyncTask
.implements java/util/Observer
.signature "Landroid/os/AsyncTask<Lcom/common/android/utils/task/genericTask/TaskParams;Ljava/lang/Object;Lcom/common/android/utils/task/genericTask/TaskResult;>;Ljava/util/Observer;"

.field private static final 'TAG' Ljava/lang/String; = "TaskManager"

.field private 'isCancelable' Z

.field private 'mListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field public 'message' Ljava/lang/String;

.field public 'paraData' Ljava/lang/Object;

.method public <init>()V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aconst_null
putfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
iconst_1
putfield com/common/android/utils/task/genericTask/GenericTask/isCancelable Z
return
.limit locals 1
.limit stack 2
.end method

.method protected transient abstract _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method protected transient doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/_doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/common/android/utils/task/genericTask/TaskParams;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient doPublishProgress([Ljava/lang/Object;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/publishProgress([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getListener()Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessage()Ljava/lang/String;
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onCancelled()V
aload 0
invokespecial android/os/AsyncTask/onCancelled()V
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
ifnull L0
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
invokeinterface com/common/android/utils/task/genericTask/TaskListener/onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V 1
ldc "TaskManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokeinterface com/common/android/utils/task/genericTask/TaskListener/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " has been Cancelled."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
ifnull L0
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
invokeinterface com/common/android/utils/task/genericTask/TaskListener/onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/common/android/utils/task/genericTask/TaskResult
invokevirtual com/common/android/utils/task/genericTask/GenericTask/onPostExecute(Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
ifnull L0
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
invokeinterface com/common/android/utils/task/genericTask/TaskListener/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onProgressUpdate([Ljava/lang/Object;)V
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
ifnull L0
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
iconst_0
aaload
invokeinterface com/common/android/utils/task/genericTask/TaskListener/onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V 2
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public setCancelable(Z)V
aload 0
iload 1
putfield com/common/android/utils/task/genericTask/GenericTask/isCancelable Z
return
.limit locals 2
.limit stack 2
.end method

.method public setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
aload 0
aload 1
putfield com/common/android/utils/task/genericTask/GenericTask/mListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setMessage(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
getstatic com/common/android/utils/task/genericTask/TaskManager/CANCEL_ALL Ljava/lang/Integer;
aload 2
checkcast java/lang/Integer
if_acmpne L0
aload 0
getfield com/common/android/utils/task/genericTask/GenericTask/isCancelable Z
ifeq L0
aload 0
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method
