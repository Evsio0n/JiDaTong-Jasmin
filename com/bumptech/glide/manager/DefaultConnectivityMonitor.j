.bytecode 50.0
.class synchronized com/bumptech/glide/manager/DefaultConnectivityMonitor
.super java/lang/Object
.implements com/bumptech/glide/manager/ConnectivityMonitor
.inner class inner com/bumptech/glide/manager/DefaultConnectivityMonitor$1

.field private final 'connectivityReceiver' Landroid/content/BroadcastReceiver;

.field private final 'context' Landroid/content/Context;

.field private 'isConnected' Z

.field private 'isRegistered' Z

.field private final 'listener' Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/manager/DefaultConnectivityMonitor$1
dup
aload 0
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor$1/<init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/connectivityReceiver Landroid/content/BroadcastReceiver;
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/listener Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isConnected Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z
aload 0
iload 1
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isConnected Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z
aload 0
aload 1
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor/isConnected(Landroid/content/Context;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/listener Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private isConnected(Landroid/content/Context;)Z
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private register()V
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isRegistered Z
ifeq L0
return
L0:
aload 0
aload 0
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/context Landroid/content/Context;
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor/isConnected(Landroid/content/Context;)Z
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isConnected Z
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/connectivityReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "android.net.conn.CONNECTIVITY_CHANGE"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/content/Context/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
iconst_1
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isRegistered Z
return
.limit locals 1
.limit stack 5
.end method

.method private unregister()V
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isRegistered Z
ifne L0
return
L0:
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/manager/DefaultConnectivityMonitor/connectivityReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/content/Context/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
iconst_0
putfield com/bumptech/glide/manager/DefaultConnectivityMonitor/isRegistered Z
return
.limit locals 1
.limit stack 2
.end method

.method public onDestroy()V
return
.limit locals 1
.limit stack 0
.end method

.method public onStart()V
aload 0
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor/register()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
invokespecial com/bumptech/glide/manager/DefaultConnectivityMonitor/unregister()V
return
.limit locals 1
.limit stack 1
.end method
