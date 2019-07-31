.bytecode 50.0
.class synchronized android/support/v4/content/LocalBroadcastManager$ReceiverRecord
.super java/lang/Object
.inner class private static ReceiverRecord inner android/support/v4/content/LocalBroadcastManager$ReceiverRecord outer android/support/v4/content/LocalBroadcastManager

.field 'broadcasting' Z

.field final 'filter' Landroid/content/IntentFilter;

.field final 'receiver' Landroid/content/BroadcastReceiver;

.method <init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/filter Landroid/content/IntentFilter;
aload 0
aload 2
putfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/receiver Landroid/content/BroadcastReceiver;
return
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 1
ldc "Receiver{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/receiver Landroid/content/BroadcastReceiver;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 1
ldc " filter="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
getfield android/support/v4/content/LocalBroadcastManager$ReceiverRecord/filter Landroid/content/IntentFilter;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 1
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
