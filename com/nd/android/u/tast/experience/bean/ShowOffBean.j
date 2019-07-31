.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/bean/ShowOffBean
.super java/lang/Object

.field private 'code' I

.field private 'level' I

.field private 'msg' Ljava/lang/String;

.field private 'range' I

.field private 'ranges' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/RangeBean;>;"

.field private 'summary' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()I
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLevel()I
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/level I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRange()I
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/range I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRanges()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/RangeBean;>;"
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/ranges Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSummary()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/ShowOffBean/summary Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setLevel(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/level I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRange(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/range I
return
.limit locals 2
.limit stack 2
.end method

.method public setRanges(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/RangeBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/ranges Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setSummary(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/ShowOffBean/summary Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
