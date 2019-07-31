.bytecode 50.0
.class public synchronized com/product/android/commonInterface/task/Raffles
.super java/lang/Object

.field private 'comment' Ljava/lang/String;

.field private 'create_dt' Ljava/lang/String;

.field private 'flag' I

.field private 'id' J

.field private 'prize_id' J

.field private 'prize_name' Ljava/lang/String;

.field private 'rank' I

.field private 'status' I

.field private 'uid' J

.field private 'user_name' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/product/android/commonInterface/task/Raffles/id J
aload 0
lconst_0
putfield com/product/android/commonInterface/task/Raffles/uid J
aload 0
lconst_0
putfield com/product/android/commonInterface/task/Raffles/prize_id J
return
.limit locals 1
.limit stack 3
.end method

.method public getComment()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/task/Raffles/comment Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreate_dt()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/task/Raffles/create_dt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFlag()I
aload 0
getfield com/product/android/commonInterface/task/Raffles/flag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/product/android/commonInterface/task/Raffles/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrize_id()J
aload 0
getfield com/product/android/commonInterface/task/Raffles/prize_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrize_name()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/task/Raffles/prize_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPrize_status()I
aload 0
getfield com/product/android/commonInterface/task/Raffles/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRank()I
aload 0
getfield com/product/android/commonInterface/task/Raffles/rank I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUId()J
aload 0
getfield com/product/android/commonInterface/task/Raffles/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/task/Raffles/user_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setComment(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/task/Raffles/comment Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreate_dt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/task/Raffles/create_dt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFlag(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/Raffles/flag I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/task/Raffles/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrize_id(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/task/Raffles/prize_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrize_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/task/Raffles/prize_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPrize_status(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/Raffles/status I
return
.limit locals 2
.limit stack 2
.end method

.method public setRank(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/task/Raffles/rank I
return
.limit locals 2
.limit stack 2
.end method

.method public setUId(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/task/Raffles/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUserName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/task/Raffles/user_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
