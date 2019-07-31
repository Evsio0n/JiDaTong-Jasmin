.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/NewContactCount
.super java/lang/Object

.field public static final 'COMMON_CONTACT_TYPE' I = 2000


.field private static 'instance' Lcom/nd/android/u/contact/activity/senior/NewContactCount;

.field private 'count' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewContactCount/count I
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
ldc com/nd/android/u/contact/activity/senior/NewContactCount
monitorenter
L0:
getstatic com/nd/android/u/contact/activity/senior/NewContactCount/instance Lcom/nd/android/u/contact/activity/senior/NewContactCount;
ifnonnull L1
new com/nd/android/u/contact/activity/senior/NewContactCount
dup
invokespecial com/nd/android/u/contact/activity/senior/NewContactCount/<init>()V
putstatic com/nd/android/u/contact/activity/senior/NewContactCount/instance Lcom/nd/android/u/contact/activity/senior/NewContactCount;
L1:
ldc com/nd/android/u/contact/activity/senior/NewContactCount
monitorexit
L3:
getstatic com/nd/android/u/contact/activity/senior/NewContactCount/instance Lcom/nd/android/u/contact/activity/senior/NewContactCount;
areturn
L2:
astore 0
L4:
ldc com/nd/android/u/contact/activity/senior/NewContactCount
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewContactCount/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/NewContactCount/count I
return
.limit locals 2
.limit stack 2
.end method
