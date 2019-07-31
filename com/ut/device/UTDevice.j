.bytecode 50.0
.class public synchronized com/ut/device/UTDevice
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
aload 2
invokestatic com/ta/utdid2/aid/AidManager/getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
aload 0
aload 1
aload 2
invokestatic com/ut/device/UTDevice/getUtdid(Landroid/content/Context;)Ljava/lang/String;
invokevirtual com/ta/utdid2/aid/AidManager/getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getAidAsync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/AidCallback;)V
aload 2
invokestatic com/ta/utdid2/aid/AidManager/getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
aload 0
aload 1
aload 2
invokestatic com/ut/device/UTDevice/getUtdid(Landroid/content/Context;)Ljava/lang/String;
aload 3
invokevirtual com/ta/utdid2/aid/AidManager/requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
return
.limit locals 4
.limit stack 5
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokestatic com/ta/utdid2/device/UTDevice/getUtdid(Landroid/content/Context;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
