.bytecode 50.0
.class final synchronized com/flurry/android/h
.super java/util/LinkedHashMap

.field private synthetic 'a' Lcom/flurry/android/ag;

.method <init>(Lcom/flurry/android/ag;IF)V
aload 0
aload 1
putfield com/flurry/android/h/a Lcom/flurry/android/ag;
aload 0
iload 2
fload 3
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
return
.limit locals 4
.limit stack 4
.end method

.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
aload 0
invokevirtual com/flurry/android/h/size()I
aload 0
getfield com/flurry/android/h/a Lcom/flurry/android/ag;
invokestatic com/flurry/android/ag/a(Lcom/flurry/android/ag;)I
if_icmple L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
