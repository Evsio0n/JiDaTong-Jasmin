.bytecode 50.0
.class public synchronized android/support/v4/content/LocalBroadcastManager
.super java/lang/Object
.inner class inner android/support/v4/content/LocalBroadcastManager$1
.inner class private static BroadcastRecord inner android/support/v4/content/LocalBroadcastManager$BroadcastRecord outer android/support/v4/content/LocalBroadcastManager
.inner class private static ReceiverRecord inner android/support/v4/content/LocalBroadcastManager$ReceiverRecord outer android/support/v4/content/LocalBroadcastManager

.field private static final 'DEBUG' Z = 0


.field static final 'MSG_EXEC_PENDING_BROADCASTS' I = 1


.field private static final 'TAG' Ljava/lang/String; = "LocalBroadcastManager"

.field private static 'mInstance' Landroid/support/v4/content/LocalBroadcastManager;

.field private static final 'mLock' Ljava/lang/Object;

.field private final 'mActions' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;>;"

.field private final 'mAppContext' Landroid/content/Context;

.field private final 'mHandler' Landroid/os/Handler;

.field private final 'mPendingBroadcasts' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;>;"

.field private final 'mReceivers' Ljava/util/HashMap; signature "Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic android/support/v4/content/LocalBroadcastManager/mLock Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/content/LocalBroadcastManager/mPendingBroadcasts Ljava/util/ArrayList;
aload 0
aload 1
putfield android/support/v4/content/LocalBroadcastManager/mAppContext Landroid/content/Context;
aload 0
new android/support/v4/content/LocalBroadcastManager$1
dup
aload 0
aload 1
invokevirtual android/content/Context/getMainLooper()Landroid/os/Looper;
invokespecial android/support/v4/content/LocalBroadcastManager$1/<init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V
putfield android/support/v4/content/LocalBroadcastManager/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
aload 0
invokespecial android/support/v4/content/LocalBroadcastManager/executePendingBroadcasts()V
return
.limit locals 1
.limit stack 1
.end method

.method private executePendingBroadcasts()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
L9:
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mPendingBroadcasts Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 1
L1:
iload 1
ifgt L5
L3:
aload 3
monitorexit
L4:
return
L5:
iload 1
anewarray android/support/v4/content/LocalBroadcastManager$BroadcastRecord
astore 4
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mPendingBroadcasts Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mPendingBroadcasts Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 3
monitorexit
L6:
iconst_0
istore 1
L10:
iload 1
aload 4
arraylength
if_icmpge L9
aload 4
iload 1
aaload
astore 3
iconst_0
istore 2
L11:
iload 2
aload 3
getfield android/support/v4/content/LocalBroadcastManager$BroadcastRecord/receivers Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L12
aload 3
getfield android/support/v4/content/LocalBroadcastManager$BroadcastRecord/receivers Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/content/LocalBroadcastManager$ReceiverRecord
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/receiver Landroid/content/BroadcastReceiver;
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mAppContext Landroid/content/Context;
aload 3
getfield android/support/v4/content/LocalBroadcastManager$BroadcastRecord/intent Landroid/content/Intent;
invokevirtual android/content/BroadcastReceiver/onReceive(Landroid/content/Context;Landroid/content/Intent;)V
iload 2
iconst_1
iadd
istore 2
goto L11
L2:
astore 4
L7:
aload 3
monitorexit
L8:
aload 4
athrow
L12:
iload 1
iconst_1
iadd
istore 1
goto L10
.limit locals 5
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic android/support/v4/content/LocalBroadcastManager/mLock Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
getstatic android/support/v4/content/LocalBroadcastManager/mInstance Landroid/support/v4/content/LocalBroadcastManager;
ifnonnull L1
new android/support/v4/content/LocalBroadcastManager
dup
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokespecial android/support/v4/content/LocalBroadcastManager/<init>(Landroid/content/Context;)V
putstatic android/support/v4/content/LocalBroadcastManager/mInstance Landroid/support/v4/content/LocalBroadcastManager;
L1:
getstatic android/support/v4/content/LocalBroadcastManager/mInstance Landroid/support/v4/content/LocalBroadcastManager;
astore 0
aload 1
monitorexit
L3:
aload 0
areturn
L2:
astore 0
L4:
aload 1
monitorexit
L5:
aload 0
athrow
.limit locals 2
.limit stack 3
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
astore 6
aload 6
monitorenter
L0:
new android/support/v4/content/LocalBroadcastManager$ReceiverRecord
dup
aload 2
aload 1
invokespecial android/support/v4/content/LocalBroadcastManager$ReceiverRecord/<init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
astore 7
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 5
L1:
aload 5
astore 4
aload 5
ifnonnull L4
L3:
new java/util/ArrayList
dup
iconst_1
invokespecial java/util/ArrayList/<init>(I)V
astore 4
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
aload 1
aload 4
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
aload 4
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
iconst_0
istore 3
L6:
iload 3
aload 2
invokevirtual android/content/IntentFilter/countActions()I
if_icmpge L11
aload 2
iload 3
invokevirtual android/content/IntentFilter/getAction(I)Ljava/lang/String;
astore 5
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 4
L7:
aload 4
astore 1
aload 4
ifnonnull L9
L8:
new java/util/ArrayList
dup
iconst_1
invokespecial java/util/ArrayList/<init>(I)V
astore 1
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 5
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L9:
aload 1
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L10:
iload 3
iconst_1
iadd
istore 3
goto L6
L11:
aload 6
monitorexit
L12:
return
L2:
astore 1
L13:
aload 6
monitorexit
L14:
aload 1
athrow
.limit locals 8
.limit stack 4
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L29 to L30 using L2
.catch all from L31 to L32 using L2
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
astore 7
aload 7
monitorenter
L0:
aload 1
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
astore 8
aload 1
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mAppContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
invokevirtual android/content/Intent/resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
astore 9
aload 1
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
astore 10
aload 1
invokevirtual android/content/Intent/getScheme()Ljava/lang/String;
astore 11
aload 1
invokevirtual android/content/Intent/getCategories()Ljava/util/Set;
astore 12
aload 1
invokevirtual android/content/Intent/getFlags()I
bipush 8
iand
ifeq L33
L1:
iconst_1
istore 2
L34:
iload 2
ifeq L4
L3:
ldc "LocalBroadcastManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Resolving type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " scheme "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " of intent "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 1
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 13
L5:
aload 13
ifnull L31
iload 2
ifeq L35
L6:
ldc "LocalBroadcastManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Action list: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
goto L35
L8:
iload 3
aload 13
invokevirtual java/util/ArrayList/size()I
if_icmpge L36
aload 13
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/content/LocalBroadcastManager$ReceiverRecord
astore 14
L9:
iload 2
ifeq L11
L10:
ldc "LocalBroadcastManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Matching against filter "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/filter Landroid/content/IntentFilter;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
aload 14
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/broadcasting Z
ifeq L15
L12:
aload 6
astore 5
iload 2
ifeq L37
L13:
ldc "LocalBroadcastManager"
ldc "  Filter's target already added"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L14:
aload 6
astore 5
goto L37
L15:
aload 14
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/filter Landroid/content/IntentFilter;
aload 8
aload 9
aload 11
aload 10
aload 12
ldc "LocalBroadcastManager"
invokevirtual android/content/IntentFilter/match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
istore 4
L16:
iload 4
iflt L38
iload 2
ifeq L18
L17:
ldc "LocalBroadcastManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Filter matched!  match=0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L18:
aload 6
astore 5
aload 6
ifnonnull L20
L19:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L20:
aload 5
aload 14
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 14
iconst_1
putfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/broadcasting Z
L21:
goto L37
L2:
astore 1
L22:
aload 7
monitorexit
L23:
aload 1
athrow
L38:
aload 6
astore 5
iload 2
ifeq L37
iload 4
tableswitch -4
L39
L40
L41
L42
default : L43
L43:
ldc "unknown reason"
astore 5
L24:
ldc "LocalBroadcastManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  Filter did not match: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L25:
aload 6
astore 5
goto L37
L26:
iload 2
aload 6
invokevirtual java/util/ArrayList/size()I
if_icmpge L28
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/content/LocalBroadcastManager$ReceiverRecord
iconst_0
putfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/broadcasting Z
L27:
iload 2
iconst_1
iadd
istore 2
goto L26
L28:
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mPendingBroadcasts Ljava/util/ArrayList;
new android/support/v4/content/LocalBroadcastManager$BroadcastRecord
dup
aload 1
aload 6
invokespecial android/support/v4/content/LocalBroadcastManager$BroadcastRecord/<init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/hasMessages(I)Z
ifne L29
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L29:
aload 7
monitorexit
L30:
iconst_1
ireturn
L31:
aload 7
monitorexit
L32:
iconst_0
ireturn
L35:
aconst_null
astore 6
iconst_0
istore 3
goto L8
L37:
iload 3
iconst_1
iadd
istore 3
aload 5
astore 6
goto L8
L33:
iconst_0
istore 2
goto L34
L40:
ldc "action"
astore 5
goto L24
L39:
ldc "category"
astore 5
goto L24
L41:
ldc "data"
astore 5
goto L24
L42:
ldc "type"
astore 5
goto L24
L36:
aload 6
ifnull L31
iconst_0
istore 2
goto L26
.limit locals 15
.limit stack 7
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
aload 0
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
ifeq L0
aload 0
invokespecial android/support/v4/content/LocalBroadcastManager/executePendingBroadcasts()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
astore 6
aload 6
monitorenter
L0:
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mReceivers Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 7
L1:
aload 7
ifnonnull L19
L3:
aload 6
monitorexit
L4:
return
L5:
iload 3
aload 7
invokevirtual java/util/ArrayList/size()I
if_icmpge L15
aload 7
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/content/IntentFilter
astore 8
L6:
iconst_0
istore 4
L7:
iload 4
aload 8
invokevirtual android/content/IntentFilter/countActions()I
if_icmpge L20
aload 8
iload 4
invokevirtual android/content/IntentFilter/getAction(I)Ljava/lang/String;
astore 9
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 9
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/ArrayList
astore 10
L8:
aload 10
ifnull L21
iconst_0
istore 2
L9:
iload 2
aload 10
invokevirtual java/util/ArrayList/size()I
if_icmpge L13
L10:
iload 2
istore 5
L11:
aload 10
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/content/LocalBroadcastManager$ReceiverRecord
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/receiver Landroid/content/BroadcastReceiver;
aload 1
if_acmpne L22
aload 10
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L12:
iload 2
iconst_1
isub
istore 5
goto L22
L13:
aload 10
invokevirtual java/util/ArrayList/size()I
ifgt L21
aload 0
getfield android/support/v4/content/LocalBroadcastManager/mActions Ljava/util/HashMap;
aload 9
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L14:
goto L21
L15:
aload 6
monitorexit
L16:
return
L2:
astore 1
L17:
aload 6
monitorexit
L18:
aload 1
athrow
L19:
iconst_0
istore 3
goto L5
L22:
iload 5
iconst_1
iadd
istore 2
goto L9
L21:
iload 4
iconst_1
iadd
istore 4
goto L7
L20:
iload 3
iconst_1
iadd
istore 3
goto L5
.limit locals 11
.limit stack 2
.end method
