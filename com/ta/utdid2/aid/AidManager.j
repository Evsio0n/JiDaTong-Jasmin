.bytecode 50.0
.class public synchronized com/ta/utdid2/aid/AidManager
.super java/lang/Object

.field private static final 'NUM_DAY_OUT_OF_DATE' I = 1


.field private static final 'TAG' Ljava/lang/String;

.field private static 'sAidManager' Lcom/ta/utdid2/aid/AidManager;

.field private 'mContext' Landroid/content/Context;

.method static <clinit>()V
aconst_null
putstatic com/ta/utdid2/aid/AidManager/sAidManager Lcom/ta/utdid2/aid/AidManager;
ldc com/ta/utdid2/aid/AidManager
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putstatic com/ta/utdid2/aid/AidManager/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
ifnonnull L6
getstatic com/ta/utdid2/aid/AidManager/TAG Ljava/lang/String;
ldc "no context!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
ldc ""
astore 4
L7:
aload 0
monitorexit
aload 4
areturn
L6:
ldc ""
astore 4
L3:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/android/utils/NetworkUtils/isConnected(Landroid/content/Context;)Z
ifeq L4
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/aid/AidRequester/getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
aload 1
aload 2
aload 3
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/ta/utdid2/aid/AidRequester/postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L4:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 4
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L5:
goto L7
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 5
.limit stack 7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/ta/utdid2/aid/AidManager
monitorenter
L0:
getstatic com/ta/utdid2/aid/AidManager/sAidManager Lcom/ta/utdid2/aid/AidManager;
ifnonnull L1
new com/ta/utdid2/aid/AidManager
dup
aload 0
invokespecial com/ta/utdid2/aid/AidManager/<init>(Landroid/content/Context;)V
putstatic com/ta/utdid2/aid/AidManager/sAidManager Lcom/ta/utdid2/aid/AidManager;
L1:
getstatic com/ta/utdid2/aid/AidManager/sAidManager Lcom/ta/utdid2/aid/AidManager;
astore 0
L3:
ldc com/ta/utdid2/aid/AidManager
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/ta/utdid2/aid/AidManager
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iconst_1
istore 5
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
ifnull L0
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
L0:
getstatic com/ta/utdid2/aid/AidManager/TAG Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
ldc "mContext:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "; has appName:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 6
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L2
iconst_1
istore 4
L3:
aload 6
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc "; has token:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
iload 5
istore 4
L5:
aload 3
aload 1
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc ""
astore 6
L6:
aload 6
areturn
L2:
iconst_0
istore 4
goto L3
L4:
iconst_0
istore 4
goto L5
L1:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 7
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L7
aload 7
astore 6
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
iconst_1
invokestatic com/ta/utdid2/android/utils/TimeUtils/isUpToDate(JI)Z
ifne L6
L7:
aload 7
astore 6
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/android/utils/NetworkUtils/isConnected(Landroid/content/Context;)Z
ifeq L6
aload 0
aload 1
aload 2
aload 3
invokespecial com/ta/utdid2/aid/AidManager/genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 8
.limit stack 4
.end method

.method public requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
iconst_1
istore 6
aload 4
ifnonnull L0
getstatic com/ta/utdid2/aid/AidManager/TAG Ljava/lang/String;
ldc "callback is null!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L0:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
ifnull L1
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L2
L1:
getstatic com/ta/utdid2/aid/AidManager/TAG Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
ldc "mContext:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "; callback:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "; has appName:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 7
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L3
iconst_1
istore 5
L4:
aload 7
iload 5
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc "; has token:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L5
iload 6
istore 5
L6:
aload 3
aload 1
iload 5
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
sipush 1002
ldc ""
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
return
L3:
iconst_0
istore 5
goto L4
L5:
iconst_0
istore 5
goto L6
L2:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 7
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L7
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
iconst_1
invokestatic com/ta/utdid2/android/utils/TimeUtils/isUpToDate(JI)Z
ifeq L7
aload 4
sipush 1001
aload 7
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
return
L7:
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/android/utils/NetworkUtils/isConnected(Landroid/content/Context;)Z
ifeq L8
aload 0
getfield com/ta/utdid2/aid/AidManager/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/aid/AidRequester/getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
aload 1
aload 2
aload 3
aload 7
aload 4
invokevirtual com/ta/utdid2/aid/AidRequester/postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
return
L8:
aload 4
sipush 1003
aload 7
invokeinterface com/ut/device/AidCallback/onAidEventChanged(ILjava/lang/String;)V 2
return
.limit locals 8
.limit stack 6
.end method
