.bytecode 50.0
.class public synchronized abstract com/common/android/utils/concurrent/NdAbstractTask
.super java/lang/Object
.implements java/lang/Runnable
.implements java/lang/Comparable
.signature "Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Comparable<Lcom/common/android/utils/concurrent/NdAbstractTask;>;"
.inner class public static final enum State inner com/common/android/utils/concurrent/NdAbstractTask$State outer com/common/android/utils/concurrent/NdAbstractTask

.field private static final 'DEFAULT_PRIORITY' I = 0


.field private 'mCurrentThread' Ljava/lang/Thread;

.field private 'mId' Lcom/common/android/utils/concurrent/ETaskTypeId;

.field private 'mName' Ljava/lang/String;

.field private 'mPriority' I

.field private 'mState' Lcom/common/android/utils/concurrent/NdAbstractTask$State;

.field private 'mTimer' Ljava/util/Timer;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/concurrent/NdAbstractTask/mPriority I
aload 0
getstatic com/common/android/utils/concurrent/NdAbstractTask$State/STAGED Lcom/common/android/utils/concurrent/NdAbstractTask$State;
putfield com/common/android/utils/concurrent/NdAbstractTask/mState Lcom/common/android/utils/concurrent/NdAbstractTask$State;
return
.limit locals 1
.limit stack 2
.end method

.method public compareTo(Lcom/common/android/utils/concurrent/NdAbstractTask;)I
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mPriority I
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getPriority()I
isub
ireturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/common/android/utils/concurrent/NdAbstractTask
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/compareTo(Lcom/common/android/utils/concurrent/NdAbstractTask;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getCurrentThread()Ljava/lang/Thread;
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mCurrentThread Ljava/lang/Thread;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()Lcom/common/android/utils/concurrent/ETaskTypeId;
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mId Lcom/common/android/utils/concurrent/ETaskTypeId;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mName Ljava/lang/String;
ifnull L0
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mName Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPriority()I
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mPriority I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getState()Lcom/common/android/utils/concurrent/NdAbstractTask$State;
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mState Lcom/common/android/utils/concurrent/NdAbstractTask$State;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTimer()Ljava/util/Timer;
aload 0
getfield com/common/android/utils/concurrent/NdAbstractTask/mTimer Ljava/util/Timer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract run()V
.end method

.method public setCurrentThread(Ljava/lang/Thread;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mCurrentThread Ljava/lang/Thread;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mId Lcom/common/android/utils/concurrent/ETaskTypeId;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPriority(I)V
aload 0
iload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mPriority I
return
.limit locals 2
.limit stack 2
.end method

.method public setState(Lcom/common/android/utils/concurrent/NdAbstractTask$State;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mState Lcom/common/android/utils/concurrent/NdAbstractTask$State;
return
.limit locals 2
.limit stack 2
.end method

.method public setTimer(Ljava/util/Timer;)V
aload 0
aload 1
putfield com/common/android/utils/concurrent/NdAbstractTask/mTimer Ljava/util/Timer;
return
.limit locals 2
.limit stack 2
.end method
