.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$Pair
.super java/lang/Object
.inner class private static Pair inner com/android/u/weibo/weibo/utils/FastDateFormat$Pair outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mObj1' Ljava/lang/Object;

.field private final 'mObj2' Ljava/lang/Object;

.method public <init>(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
instanceof com/android/u/weibo/weibo/utils/FastDateFormat$Pair
ifne L2
iconst_0
ireturn
L2:
aload 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat$Pair
astore 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
ifnonnull L3
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
ifnonnull L4
L5:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
ifnonnull L6
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
ifnull L1
L4:
iconst_0
ireturn
L3:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L4
goto L5
L6:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L4
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
iconst_0
istore 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
ifnonnull L0
iconst_0
istore 1
L1:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
ifnonnull L2
L3:
iload 1
iload 2
iadd
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
istore 1
goto L1
L2:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
istore 2
goto L3
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj1 Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$Pair/mObj2 Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 93
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
