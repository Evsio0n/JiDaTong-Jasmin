.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/bean/TodayTaskList
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -7345587750171687803L


.field private 'code' I

.field private 'exp' I

.field private 'expRec' I

.field private 'expUp' I

.field private 'itemList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;>;"

.field private 'level' I

.field private 'moneyRec' I

.field private 'msg' Ljava/lang/String;

.field private 'progress' I

.field private 'range' Ljava/lang/String;

.field private 'reward' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getExp()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/exp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getExpRec()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/expRec I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getExpUp()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/expUp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;>;"
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/itemList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLevel()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/level I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMoneyRec()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/moneyRec I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProgress()I
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/progress I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRange()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/range Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReward()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/reward Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setExp(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/exp I
return
.limit locals 2
.limit stack 2
.end method

.method public setExpRec(I)V
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/expRec I
ifge L0
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/expRec I
return
L0:
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/expRec I
return
.limit locals 2
.limit stack 2
.end method

.method public setExpUp(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/expUp I
return
.limit locals 2
.limit stack 2
.end method

.method public setItemList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/itemList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setLevel(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/level I
return
.limit locals 2
.limit stack 2
.end method

.method public setMoneyRec(I)V
aload 0
getfield com/nd/android/u/tast/experience/bean/TodayTaskList/moneyRec I
ifge L0
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/moneyRec I
return
L0:
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/moneyRec I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProgress(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/progress I
return
.limit locals 2
.limit stack 2
.end method

.method public setRange(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/range Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setReward(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/bean/TodayTaskList/reward Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
