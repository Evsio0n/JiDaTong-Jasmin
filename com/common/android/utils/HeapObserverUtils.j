.bytecode 50.0
.class public synchronized com/common/android/utils/HeapObserverUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static check()V
invokestatic android/os/Debug/getNativeHeapAllocatedSize()J
lstore 0
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/maxMemory()J
lstore 2
invokestatic android/os/Debug/getNativeHeapFreeSize()J
lstore 4
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/totalMemory()J
lstore 6
ldc "heapobserver"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "max="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",total="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",free="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",used="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 8
.limit stack 4
.end method

.method public static check(Ljava/lang/String;)V
ldc "heapobserver"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/common/android/utils/HeapObserverUtils/getMemoryState()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static getMemoryState()Ljava/lang/String;
invokestatic android/os/Debug/getNativeHeapAllocatedSize()J
lstore 0
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/maxMemory()J
lstore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "max="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",used="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static usedRate()F
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/maxMemory()J
lstore 0
invokestatic android/os/Debug/getNativeHeapAllocatedSize()J
l2f
lload 0
l2f
fdiv
freturn
.limit locals 2
.limit stack 3
.end method
