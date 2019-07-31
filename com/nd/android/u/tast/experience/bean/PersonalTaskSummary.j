.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/bean/PersonalTaskSummary
.super java/lang/Object

.field private 'process' I

.field private 'summary' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getProcess()I
aload 0
getfield com/nd/android/u/tast/experience/bean/PersonalTaskSummary/process I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSummary()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/PersonalTaskSummary/summary Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setProcess(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/PersonalTaskSummary/process I
return
.limit locals 2
.limit stack 2
.end method

.method public setSummary(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/PersonalTaskSummary/summary Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
